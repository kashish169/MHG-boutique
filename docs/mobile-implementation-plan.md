# Mobile Implementation Plan — Detailed

This document provides a **detailed implementation plan** for the mobile app scope so that everything is clear when implementation starts. It references the existing codebase structure, key files, API assumptions, and step-by-step tasks. Use it together with [Implementation of Feature Scope (mobile only)](implementation-of-feature-scope.md) and [Scope Features Planning](scope-features-planning.md).

---

## Table of Contents

1. [Codebase Context](#1-codebase-context)
2. [Phase 1 — Loyalty Dashboard & Order Reference (#3, #4)](#2-phase-1--loyalty-dashboard--order-reference-3-4)
3. [Phase 2 — Expiry Notifications (#2)](#3-phase-2--expiry-notifications-2)
4. [Phase 3 — Goal Game, Instagram, Gift Card (#6, #8)](#4-phase-3--goal-game-instagram-gift-card-6-8)
5. [Phase 5 — Marketplace (#9)](#5-phase-5--marketplace-9)
6. [Cross-Cutting: Navigation, Notifications, Deep Links](#6-cross-cutting-navigation-notifications-deep-links)
7. [API Contract Assumptions (Mobile View)](#7-api-contract-assumptions-mobile-view)
8. [Implementation Order Summary](#8-implementation-order-summary)

---

## 1. Codebase Context

### 1.1 App structure

- **State management:** GetX (controllers, bindings, reactive).
- **Navigation:** GetX routing; routes in [lib/core/routes/app_routes.dart](lib/core/routes/app_routes.dart).
- **Main shell:** [MainWrapper](lib/features/mainwrapper/view/pages/main_wrapper.dart) with 5 bottom tabs: Home, Categories (index 0), Wishlist (Categories index 1), Cart, Profile. Rewards is **not** a tab; it is opened from Profile or Home reward banner via `Get.toNamed(RewardsPage.routeName)` (`/reward`).
- **Auth:** [SignInPage](lib/features/auth/signin/view/pages/sign_in_page.dart), [SignUpPage](lib/features/auth/sign_up/view/pages/sign_up_view.dart). Social login (Google, Facebook, Apple) in [BottomThirdAuth](lib/features/auth/widgets/bottom_third_auth.dart) using [SignUpController](lib/features/auth/sign_up/controller/sign_up_controller.dart).signUp(accountType, token, email, name). API: `Api.socialSignIn` (`$apiRoot/users/auth/social-signin`).
- **Profile & loyalty:** User profile and aggregate loyalty data (hearts, tier, order count) come from [ProfileController](lib/features/profile/controller/profile_controller.dart) and [ProfileInfoModal](lib/features/profile/models/profle_info_model.dart). Profile API: `Api.profile` (`$apiRoot/users/profile`). There is **no** dedicated points history or loyalty transactions API in the app today; backend will add it.
- **Rewards screen:** [RewardsPage](lib/features/rewards/pages/rewards_page.dart) shows: greeting, [ProfileRewardBox](lib/features/profile/view/widgets/reward_widget.dart) (hearts, progress to next tier), [ScanQrCard](lib/features/rewards/widgets/scan_qr_card.dart), [RewardLevelsWidget](lib/features/rewards/widgets/reward_levels_widget.dart) (Mojab/Moghram/Molah tiers). **No points history or per-batch expiry yet.**
- **Orders:** [MyOrdersPage](lib/features/myorders/view/pages/my_orders_page.dart), [MyOrderDetailPage](lib/features/myorders/view/pages/my_order_detail.dart). Navigation to detail: `Get.toNamed(MyOrderDetailPage.routeName, arguments: model)` where `model` is [MyOrder](lib/features/myorders/models/order_model.dart). Orders list from `Api.myOrders`; **single-order fetch by id/number** may need to be added for “tap order ref from points history.”
- **Notifications:** [NotificationService](lib/core/services/notification_service.dart) (FCM + local); shows title/body; **does not** read `message.data` for type or deep link. [NotificationsPage](lib/features/notifications/view/pages/notifications_page.dart) lists in-app notifications from API `Api.notifications`.
- **Deep links:** [DeepLinkSevice](lib/core/services/deep_link_service.dart) handles only **product** links (`/product?id=...` → ProductDetailsPage). No reward/loyalty path yet.
- **Swipe:** [SwipeController](lib/features/swipe/controller/swipe_controller.dart) and [SwipePage](lib/features/swipe/view/pages/swipe_page.dart) for product cards (like/skip). **No “goal game” (balls) in codebase** — to be added (new or under swipe).
- **Checkout:** [CheckoutController](lib/features/checkout/controllers/checkout_controller.dart), [CheckoutPage](lib/features/checkout/views/pages/checkout_page.dart); payment methods, place order. **No gift card payment or gift card module yet.**

### 1.2 Conventions

- Feature folder: `lib/features/<feature>/` with `binding/`, `controller/`, `model/`, `repository/`, `view/pages/`, `view/widgets/`.
- Route names: static `routeName` on page (e.g. `RewardsPage.routeName = '/reward'`).
- API base: [lib/core/api/api.dart](lib/core/api/api.dart); v2 root `$apiRoot` = `/api/v2`.

---

## 2. Phase 1 — Loyalty Dashboard & Order Reference (#3, #4)

### 2.1 Backend assumptions (for mobile implementation)

- **#3:** An API returns loyalty data that includes **point batches with expiration date** (e.g. per transaction or per batch). Option A: existing or extended profile/loyalty endpoint includes a list of point batches with `expires_at`. Option B: New endpoint e.g. `GET /api/v2/loyalty/points-history` or `GET /api/v2/loyalty/customer-data` (filtered for current user) returning batches with `expires_at`. Mobile will consume this for “batch expiry” and “transaction detail with expiry.”
- **#4:** Each loyalty transaction (earn/redeem) has an **order reference** (order_id and/or order_number). Same points-history or loyalty API response includes this so the app can show “Order #XYZ” and navigate to order detail.

### 2.2 Feature 03 — Customer loyalty data dashboard (mobile)

**Goal:** Show per-batch expiration on the rewards screen and in a points/transaction detail view.

#### Step 1: Data layer

- **New or extended API:** e.g. `GET /api/v2/loyalty/points-history` (or whatever backend provides) with query params if needed (e.g. page, limit). Response should include for each entry at least: points amount, type (earn/redeem), date, **expires_at** (per batch), and **order_id / order_number** (for #4).
- **Model:** Create a model (e.g. `LoyaltyPointBatch` or `LoyaltyTransaction`) in `lib/features/rewards/model/`: fields such as `id`, `points`, `type`, `createdAt`, `expiresAt`, `orderId`, `orderNumber`. Parse from API JSON.
- **Repository:** Add method in rewards repo (or create one) to fetch points history. Call from RewardsController (or a dedicated controller for points history).

#### Step 2: Rewards screen — batch expiry

- **Where:** [RewardsPage](lib/features/rewards/pages/rewards_page.dart) and/or a new widget used there (e.g. under `lib/features/rewards/widgets/`).
- **What:** Add a section “Points history” or “Your points” that lists point batches (or a summary by batch). Each item shows: points, date, **expiration date (expires_at)**. Use the new model and API.
- **Controller:** Extend [RewardsController](lib/features/rewards/controller/rewards_controller.dart) (or add a PointsHistoryController) to hold list of batches/transactions, load from repo, handle loading/error.

#### Step 3: Transaction detail with expiry

- **Where:** Either a bottom sheet, a new page, or an expandable row when user taps a batch/transaction in the list.
- **What:** Show full detail for one transaction/batch: points, type, date, **expires_at**, and (for #4) order reference. Reuse the same model.

**Key files to add/change**

- `lib/features/rewards/model/` — new model(s) for point batch/transaction.
- `lib/features/rewards/repository/` — repo interface + impl (if not exists) and API URL (e.g. in [api.dart](lib/core/api/api.dart)).
- `lib/features/rewards/controller/rewards_controller.dart` — load points history, expose list.
- `lib/features/rewards/widgets/` — new widget(s): points history list, batch/transaction row, detail view (with expiry).
- `lib/features/rewards/pages/rewards_page.dart` — add the new section.

**Acceptance (mobile)**

- User sees point batches (or transactions) with expiry date on Rewards screen.
- User can open a detail view that shows expiry for that batch/transaction.

---

### 2.3 Feature 04 — Order reference in loyalty transactions (mobile)

**Goal:** Show order reference in points history and make it tappable to open order detail.

#### Step 1: Show order reference

- **Data:** Use the same API as #3; ensure each item has `order_id` and/or `order_number`. Add to the model (e.g. `orderNumber`, `orderId`).
- **UI:** In the points history list (and in transaction detail), display “Order #&lt;order_number&gt;” (or similar). If backend sends only order_id, show “Order &lt;id&gt;” or request backend to include order_number.

#### Step 2: Tap to order detail

- **Current behavior:** [MyOrderDetailPage](lib/features/myorders/view/pages/my_order_detail.dart) expects `Get.arguments as MyOrder`. So we need a full `MyOrder` object to navigate.
- **Options:**
  - **A:** Backend exposes `GET /api/v2/users/orders/{orderId}` or `GET .../orders/by-number?order_number=XYZ` returning a single order in the same shape as list. Mobile fetches by order_id or order_number, maps to `MyOrder`, then `Get.toNamed(MyOrderDetailPage.routeName, arguments: myOrder)`.
  - **B:** Navigate to MyOrdersPage and pass a query/highlight (e.g. scroll to order) — more complex and less direct.
- **Recommended:** Implement Option A. Add in [myorders](lib/features/myorders/) repository a method `getOrderById(int orderId)` or `getOrderByNumber(String orderNumber)` calling the new endpoint. In rewards, on tap of order ref: call this method, then navigate to `MyOrderDetailPage` with the returned `MyOrder`. Handle loading and error (e.g. order not found).

#### Step 3: Navigation flow

- In the points history widget (or transaction detail), make the order reference a `GestureDetector` or `InkWell`. On tap: get order_id or order_number from model → call orders repo → on success navigate to `MyOrderDetailPage.routeName` with `arguments: myOrder`.

**Key files to add/change**

- `lib/features/rewards/model/` — orderId, orderNumber on point/transaction model.
- `lib/features/rewards/widgets/` — tappable order ref in list/detail.
- `lib/features/myorders/repository/` — new method to fetch single order; add API constant in [api.dart](lib/core/api/api.dart).
- `lib/features/myorders/controller/my_orders_controller.dart` — optional: method to fetch one order and return MyOrder (or call repo from rewards controller).

**Acceptance (mobile)**

- Points history shows order number/reference per transaction where applicable.
- Tapping it opens the correct order detail screen (after fetching that order if needed).

---

## 3. Phase 2 — Expiry Notifications (#2)

**Goal:** Handle “loyalty points expiring” push notification: open Rewards screen and show batch expiry there.

### 3.1 Backend assumption

- Push payload includes a **data** field (e.g. `type: "loyalty_expiry_reminder"` or similar) so the app can route without relying only on title/body.

### 3.2 Notification payload handling

- **Where:** [NotificationService](lib/core/services/notification_service.dart). Currently it only uses `message.notification!.title` and `message.notification!.body` and does not read `message.data`.
- **Change:** When receiving a message (both `onMessage` and `onMessageOpenedApp`), read `message.data`. If `data['type'] == 'loyalty_expiry_reminder'` (or agreed key), **do not** only show the notification — also **navigate** to Rewards when user taps (and optionally when foreground).
- **Navigation:** Use GetX: e.g. `Get.toNamed(RewardsPage.routeName)` or `Get.offAllNamed(MainWrapper.routeName); then Get.toNamed(RewardsPage.routeName)` depending on app flow (e.g. if user must be on main wrapper to see bottom nav, go to main then reward). Prefer opening Rewards so user sees batch expiry (implemented in Phase 1).

### 3.3 Initial message (app opened from killed state)

- **Where:** [NotificationService.checkForInitialMessage](lib/core/services/notification_service.dart) (and/or in [main.dart](lib/main.dart) / [app.dart](lib/app/app.dart) after app init). Currently it gets `initialMessage` but does nothing.
- **Change:** If `initialMessage != null` and `data['type'] == 'loyalty_expiry_reminder'`, navigate to Rewards after app is ready (same as tap behavior).

### 3.4 Local notification tap (optional)

- If the app uses [FlutterLocalNotificationsPlugin](https://pub.dev/packages/flutter_local_notifications) to show the notification and user taps it, ensure the tap payload (e.g. with type) is passed to the same navigation logic. This may require storing `data` when showing the notification and reading it in the tap callback.

**Key files**

- `lib/core/services/notification_service.dart` — read `message.data`, route by type, navigate to `/reward`.
- `lib/features/rewards/pages/rewards_page.dart` — no change if Phase 1 already shows batch expiry; otherwise ensure Rewards is the single place for “points and expiry.”

**Acceptance (mobile)**

- Receiving a loyalty expiry reminder and tapping it opens the Rewards screen.
- Rewards screen shows per-batch expiration (from Phase 1).

---

## 4. Phase 3 — Goal Game, Instagram, Gift Card (#6, #8)

### 4.1 Feature 06 — Goal game (5 balls) + Instagram login

#### 4.1.1 Goal game (5 balls)

- **Current state:** There is **no** goal game (balls) in the codebase. The swipe feature is product cards (like/skip). So this is **new**.
- **Backend assumption:** Backend provides or will provide a **game config** (e.g. ball count = 5, scoring rules) and possibly an endpoint to submit game result and grant rewards. Mobile will need to call that when the game ends.
- **Implementation outline:**
  - **Placement:** Either a new feature `lib/features/goal_game/` or under `lib/features/swipe/` (e.g. `swipe/view/pages/goal_game_page.dart`). Recommendation: new `lib/features/goal_game/` to keep swipe (product cards) separate.
  - **UI:** A single screen with 5 balls, physics (e.g. drag, collision). Use Flutter physics (e.g. `AnimationController`, custom painter) or a package (e.g. flame, or simple positioned/draggable widgets). Countdown or “shoot” mechanic as per design.
  - **Scoring:** Display score; on game end send result to backend (if API exists) and show result screen (success/fail, points earned). Backend may validate result (e.g. server-side physics or rules).
  - **Config:** If backend sends ball count / multiplier, parse and use (e.g. 5 balls, multiplier). Otherwise hardcode 5 for now.
  - **Navigation:** Entry point from Profile or Rewards (e.g. “Play goal game” button). Register route and binding in [app_routes.dart](lib/core/routes/app_routes.dart).

#### 4.1.2 Instagram login

- **Backend:** Backend adds Instagram OAuth and accepts `accountType: 'instagram'` and token (or equivalent) on `Api.socialSignIn`. User model may have `instagram_id`.
- **Mobile:**
  - **UI:** Add a fourth button in [BottomThirdAuth](lib/features/auth/widgets/bottom_third_auth.dart) (Google, Facebook, Apple, **Instagram**). Use an Instagram icon asset (add to [app_assets.dart](lib/constants/app_assets.dart)).
  - **OAuth:** Instagram Login is typically via Facebook Graph API (Instagram Basic Display or Instagram Graph API). Options: (1) WebView loading Instagram/Facebook OAuth URL and capturing redirect/token, or (2) a package such as `flutter_instagram` or similar if available and maintained. Implement token retrieval and send to backend via existing `controller.signUp(accountType: 'instagram', token: token, email: email, name: name)` (or signIn if separate). Handle missing email/name if Instagram does not provide.
  - **Sign-in vs sign-up:** Reuse the same social sign-in API and SignUpController flow as other providers; backend merges account if email exists.
  - **Onboarding:** If there is an onboarding screen that lists social options, add Instagram there too (same icon and flow).

**Key files**

- New: `lib/features/goal_game/` (binding, controller, view, model if needed).
- [lib/core/routes/app_routes.dart](lib/core/routes/app_routes.dart) — register goal game route.
- [lib/features/auth/widgets/bottom_third_auth.dart](lib/features/auth/widgets/bottom_third_auth.dart) — Instagram button + OAuth.
- [lib/constants/app_assets.dart](lib/constants/app_assets.dart) — Instagram icon.
- Profile or Rewards — entry to goal game.

**Acceptance (mobile)**

- Goal game plays with 5 balls and shows score/result; result can be sent to backend if API exists.
- User can sign in/up with Instagram; Instagram appears on auth and onboarding.

---

### 4.2 Feature 08 — Digital gift card (mobile)

**Goal:** Purchase gift card, view wallet (balance), show QR for in-store, share via Dynamic Link, use at checkout.

#### Assumptions

- Backend provides: gift card purchase API (design, amount or F&B set menu, recipient); list my gift cards with balance; redeem/apply at checkout; QR code value or link for in-store. Firebase Dynamic Links are configured for gift card (e.g. path `/giftcard?id=...`).

#### Step 1: Feature structure

- Create `lib/features/gift_card/`: binding, controller, repository, models, view/pages, view/widgets.
- Models: e.g. `GiftCard` (id, code, balance, currency, expiresAt, designUrl, etc.), `GiftCardProduct` (for purchase: amount or set menu options). Add API constants in [api.dart](lib/core/api/api.dart).

#### Step 2: Purchase flow

- **Pages:** e.g. GiftCardPurchasePage (select design → amount or F&B set menu → recipient email/name → payment). Reuse existing payment flow (e.g. redirect to same payment methods as checkout) or dedicated gift card payment endpoint. On success, show confirmation and optionally “View in wallet.”
- **Controller/Repo:** Call purchase API; handle loading and errors.

#### Step 3: Gift card wallet

- **Page:** List user’s gift cards (card image, balance, expiry). Pull-to-refresh. Tap card → detail (balance, code, expiry, QR).
- **API:** e.g. `GET /api/v2/gift-cards` or `/users/gift-cards` returning list with balance.

#### Step 4: QR for in-store

- **Page or bottom sheet:** Full-screen or large QR code (value or URL from backend) so store can scan. Backend may return `qr_value` or `qr_url` per card.

#### Step 5: Share via Dynamic Link

- Use [DeepLinkSevice](lib/core/services/deep_link_service.dart) pattern: add method `createGiftCardDynamicLink(giftCardId)` (path like `/giftcard?id=...`). Share that link (e.g. Share.share). Handle incoming link: in [DeepLinkSevice.initDynamicLink](lib/core/services/deep_link_service.dart) and `onLink`, if path is `giftcard`, parse id and navigate to gift card detail or wallet.

#### Step 6: Checkout integration

- In [CheckoutPage](lib/features/checkout/views/pages/checkout_page.dart) or payment step, add “Apply gift card” or “Pay with gift card”: input code or select from wallet, call backend to apply balance, update order total. Backend returns updated price; show applied amount and remaining balance. If multiple payment methods, gift card can be one of them.

**Key files**

- New: `lib/features/gift_card/` (full feature).
- [lib/core/routes/app_routes.dart](lib/core/routes/app_routes.dart) — routes for purchase, wallet, QR.
- [lib/core/services/deep_link_service.dart](lib/core/services/deep_link_service.dart) — gift card link create + handle.
- [lib/features/checkout/](lib/features/checkout/) — apply gift card UI and call to backend.

**Acceptance (mobile)**

- User can buy a gift card (design, amount/set menu, recipient) and pay.
- User sees wallet with balance; can open QR for in-store.
- User can share gift card via link; opening link opens app to gift card.
- User can apply gift card at checkout and see balance applied.

---

## 5. Phase 5 — Marketplace (#9)

**Goal:** Full marketplace experience: browse, create listing, auction (bid, timer), seller dashboard, buy (reuse checkout), messaging, disputes, seller profile, push notifications.

### 5.1 Structure

- New feature: `lib/features/marketplace/` with subfolders: binding, controller(s), model(s), repository, view/pages, view/widgets. Multiple controllers are fine (e.g. BrowseController, ListingFormController, AuctionController, SellerDashboardController, MessagingController, DisputeController).

### 5.2 Navigation

- **Option A:** Add a 6th tab in [MainWrapper](lib/features/mainwrapper/view/pages/main_wrapper.dart) and [BottomNavBarWidget](lib/features/mainwrapper/view/widgets/bottom_nav_bar.dart) for “Marketplace” (or replace one tab if product wants 5 tabs).  
- **Option B:** Marketplace as a section inside an existing tab (e.g. Categories or Profile) with a prominent entry.  
- Recommendation: document both; implement per product decision. For “Marketplace tab” in scope, add a new tab and a Marketplace root page (e.g. MarketplacePage with browse as default).

### 5.3 Browse

- Page: list/grid of marketplace listings. Filters: category, price range, condition, location (if backend supports). Sort: newest, price, etc. Use pagination (infinite scroll). Pull-to-refresh. Tap item → Listing detail page (with “Buy now” or “Place bid” and timer for auctions).

### 5.4 Listing creation (seller)

- Multi-step or single form: photo upload (multiple), title, description, condition, category, price type (fixed vs auction), price or starting bid, duration for auction. Preview before submit. Call backend to create listing; handle validation errors.

### 5.5 Auction UI

- On listing detail (when listing is auction): show current bid, countdown timer (end time from backend), “Place bid” button (optional min next bid). When user places bid, call API and refresh. Show “You’re the highest bidder” or “Outbid” state. Optional: live updates via polling or WebSocket if backend supports.

### 5.6 Seller dashboard

- Page(s): “My listings” (active, sold), “Sales history,” “Earnings,” “Payout requests.” Data from backend APIs. Navigation from Profile (“Sell” or “My marketplace”) or from Marketplace tab when user is seller.

### 5.7 Buyer purchase

- For “Buy now” or won auction: add to cart or go directly to checkout. **Reuse** [CheckoutController](lib/features/checkout/controllers/checkout_controller.dart) and [CheckoutPage](lib/features/checkout/views/pages/checkout_page.dart) with a “marketplace order” context (e.g. order type or listing_id so backend creates marketplace order). Payment methods unchanged.

### 5.8 Messaging

- List of conversations (buyer–seller per listing or per order). Chat UI: message list + input. Backend: send message, get messages (REST or WebSocket). Store and display messages; optional push when new message.

### 5.9 Disputes

- From order detail or marketplace order: “Open dispute” button. Form: reason, description, photo upload (evidence). Submit to backend. “My disputes” list and status (open, in review, resolved).

### 5.10 Seller profile

- Public page for a seller: name, rating, review count, list of their listings. Shown when tapping seller name on listing or in chat.

### 5.11 Push notifications

- In [NotificationService](lib/core/services/notification_service.dart), handle `data.type` for: `marketplace_outbid`, `marketplace_auction_won`, `marketplace_item_sold`, `marketplace_dispute_update`, `marketplace_payout_processed`. Route to appropriate screen (listing detail, order detail, dispute, seller dashboard).

**Key files**

- New: entire `lib/features/marketplace/` (pages: browse, listing detail, create listing, auction, seller dashboard, messaging, dispute list/detail, seller profile).
- [lib/features/mainwrapper/](lib/features/mainwrapper/) — add Marketplace tab if chosen.
- [lib/core/routes/app_routes.dart](lib/core/routes/app_routes.dart) — all marketplace routes.
- [lib/features/checkout/](lib/features/checkout/) — optional context for marketplace order.
- [lib/core/services/notification_service.dart](lib/core/services/notification_service.dart) — marketplace notification types.

**Acceptance (mobile)**

- User can open Marketplace, browse, filter, view listing, bid or buy, pay via existing checkout.
- Seller can create listing, see dashboard, earnings, payout requests.
- Buyer and seller can message; buyer can open dispute with photo; both see dispute status.
- Seller profile shows ratings and listings; push notifications work for marketplace events.

---

## 6. Cross-Cutting: Navigation, Notifications, Deep Links

### 6.1 Deep link to Rewards

- **Where:** [DeepLinkSevice](lib/core/services/deep_link_service.dart). Currently only `product` path.
- **Add:** If path is `reward` or `rewards` (and optional query), navigate to `RewardsPage.routeName`. Use same pattern as product (getInitialLink + onLink). This supports notification “open Rewards” and future marketing links.

### 6.2 Notification data payload convention

- Agree with backend on FCM `data` map: e.g. `type` (string) for routing, optional `id` or `order_id`, etc. Document in API or shared doc. Mobile switches on `type` and navigates.

### 6.3 Route list (additions)

- Goal game: e.g. `/goal_game`.
- Gift card: e.g. `/gift_card`, `/gift_card_wallet`, `/gift_card_qr`, `/gift_card_purchase`.
- Marketplace: e.g. `/marketplace`, `/marketplace_listing`, `/marketplace_create`, `/marketplace_auction`, `/seller_dashboard`, `/marketplace_messages`, `/marketplace_dispute`, `/seller_profile`.

---

## 7. API Contract Assumptions (Mobile View)

| Feature | Assumption |
|---------|------------|
| #3, #4 | Loyalty API (e.g. points-history or customer-data) returns list of batches/transactions with `expires_at`, `order_id`, `order_number`. |
| #4 | Single order fetch: `GET /api/v2/users/orders/{id}` or `?order_number=...` returning one order in same shape as list (for navigation to order detail). |
| #2 | FCM payload includes `data.type = 'loyalty_expiry_reminder'` (or agreed value). |
| #6 Goal | Backend accepts game result (e.g. score, ball count) and returns or grants rewards; config endpoint optional. |
| #6 Instagram | Backend accepts `accountType: 'instagram'` and token on social-signin. |
| #8 | Gift card: purchase, list mine with balance, apply at checkout, QR value/URL; Dynamic Link path for gift card. |
| #9 | Marketplace: CRUD listings, place bid, buy, messages, disputes, seller profile, payouts, notifications with types. |

---

## 8. Implementation Order Summary

| Order | Phase | Scope | Suggested sequence (mobile) |
|-------|--------|--------|-----------------------------|
| 1 | 1 | #3 | Model + API loyalty points history → Rewards UI batch expiry + transaction detail with expiry. |
| 2 | 1 | #4 | Add order ref to model/UI → single-order API + tap to order detail. |
| 3 | 2 | #2 | NotificationService: read data.type → navigate to Rewards; handle initial message. |
| 4 | 3 | #6 | Goal game: new feature + route + UI (5 balls). Instagram: button + OAuth + backend. |
| 5 | 3 | #8 | Gift card feature: purchase, wallet, QR, Dynamic Link, checkout apply. |
| 6 | 5 | #9 | Marketplace: tab + browse → listing detail + auction → create listing → seller dashboard → checkout reuse → messaging → disputes → profile → push. |

Use this plan together with [implementation-of-feature-scope.md](implementation-of-feature-scope.md) for task checklists and [scope-features-planning.md](scope-features-planning.md) for scope and phasing.
