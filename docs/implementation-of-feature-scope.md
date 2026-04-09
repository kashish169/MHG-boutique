# Implementation of Feature Scope — Mobile App Only

This document describes **mobile app (Flutter)** implementation for the scoped features from the [Scope Features Planning](scope-features-planning.md). It lists only tasks, key files, and acceptance criteria for the MHG Flutter app. Backend, admin, DevOps, and training are out of scope here.

**Related document:** [docs/scope-features-planning.md](scope-features-planning.md) — full scope mapping and phasing.

---

## 1. Overview: Scope Items with Mobile Work

| Phase | Scope # | Feature | Mobile app work |
|-------|---------|---------|------------------|
| 1 | #1 | Shopify "No Customer" bug | **None** — backend only. |
| 1 | #3 | Customer loyalty data dashboard | Rewards screen: batch expiry; transaction detail with expiry. |
| 1 | #4 | Order reference in loyalty transactions | Points history: show order ref; tap to order detail. |
| 2 | #2 | Loyalty points expiry notifications | Handle notification type; deep link to Rewards; show batch expiry. |
| 2 | #5 | Push notification setup training | **None** — training only. |
| 3 | #6 | Goal game (5 balls) + Instagram login | Goal game UI (5 balls); Instagram login and onboarding. |
| 3 | #8 | Digital gift card (Shopify + F&B) | Purchase flow; wallet; QR screen; Dynamic Links; checkout. |
| 4 | #7 | Gamification proposals consultation | **None** — consultation only. |
| 5 | #9 | Crowd selling marketplace | Marketplace tab; browse; listing creation; auction UI; seller dashboard; checkout; messaging; disputes; profile; push. |

---

## 2. Phase 1 — Mobile Tasks (#3, #4)

### 2.1 Feature 03: Customer loyalty data dashboard (mobile)

**Assumption:** Backend exposes loyalty data with per-batch expiration; mobile consumes it.

| # | Task | Details |
|---|------|---------|
| 1 | Rewards screen — batch expiry | In the rewards/dashboard screen, display expiration date per point batch (e.g. list or table of batches with expiry). |
| 2 | Transaction detail — expiry | In the points history / transaction detail view, show expiry date for each transaction/batch. |

**Key files:** `lib/features/rewards/` (rewards pages, widgets, controller, repository).

**Acceptance criteria (mobile):** User sees per-batch expiration in rewards screen and in transaction detail; data comes from API.

---

### 2.2 Feature 04: Order reference in loyalty transactions (mobile)

**Assumption:** API returns order reference (order number / order_id) for each loyalty transaction.

| # | Task | Details |
|---|------|---------|
| 1 | Points history — order reference | In points history (earn/redeem list), show the linked order number/reference for each transaction. |
| 2 | Tap to order detail | Make the order reference tappable; navigate to the existing order detail screen for that order. |

**Key files:** `lib/features/rewards/` (points history UI, navigation to order detail).

**Acceptance criteria (mobile):** Points history shows order ref; tapping it opens the correct order detail screen.

---

## 3. Phase 2 — Mobile Tasks (#2)

### 3.1 Feature 02: Loyalty points expiry notifications (mobile)

| # | Task | Details |
|---|------|---------|
| 1 | Notification handler | Handle the new `loyalty_expiry_reminder` (or equivalent) notification type in the app’s notification handler. |
| 2 | Deep link to Rewards | When user taps the notification, open the Rewards / Loyalty screen (reuse existing deep-link or navigation). |
| 3 | Batch expiry in UI | Ensure the rewards screen shows per-batch expiration (aligned with #3); no duplicate logic if already done in Phase 1. |

**Key files:** `lib/features/notifications/` (notification handling, routing); `lib/features/rewards/` (destination screen); `lib/core/services/notification_service.dart` (or equivalent).

**Acceptance criteria (mobile):** Tapping expiry reminder opens Rewards screen; batch expiry is visible there.

---

## 4. Phase 3 — Mobile Tasks (#6, #8)

### 4.1 Feature 06: Goal game (5 balls) + Instagram login (mobile)

| # | Task | Details |
|---|------|---------|
| 1 | Goal game — 5 balls | Update the goal game UI to use 5 balls: physics, collision detection, and animations for 5 balls. |
| 2 | Goal game — scoring & result | Adjust scoring display and result screen for 5-ball gameplay (align with backend rules). |
| 3 | Instagram — auth screen | Add an Instagram login/sign-up button alongside Google, Facebook, and Apple on the auth screen(s). |
| 4 | Instagram — OAuth flow | Implement Instagram OAuth in Flutter (webview-based or native SDK); handle token storage and refresh. |
| 5 | Onboarding | Include Instagram as an option in the onboarding/sign-up flow. |
| 6 | Test | Verify on both iOS and Android. |

**Key files:** `lib/features/swipe/` (goal game UI and logic); `lib/features/auth/` (login/signup pages, social auth, onboarding).

**Acceptance criteria (mobile):** Goal game runs with 5 balls and correct scoring; user can sign in/up with Instagram and see it in onboarding.

---

### 4.2 Feature 08: Digital gift card — mobile

| # | Task | Details |
|---|------|---------|
| 1 | Purchase flow | Screen(s) to select gift card design, choose amount or F&B set menu, enter recipient details, and complete payment (reuse existing payment flow where possible). |
| 2 | Gift card wallet | Screen to list the user’s gift cards with current balance (call API for balance). |
| 3 | QR for in-store | Screen to display the gift card QR code for in-store redemption (scannable by store). |
| 4 | Sharing | Share gift card via Firebase Dynamic Links (open app or fallback to web). |
| 5 | Checkout | Integrate “Pay with gift card” (or apply balance) in the existing checkout flow. |

**Key files:** New gift card feature under `lib/features/` (e.g. `lib/features/gift_card/` or similar): pages for purchase, wallet, QR; checkout integration in `lib/features/checkout/`.

**Acceptance criteria (mobile):** User can purchase and send a gift card; view wallet and balance; show QR for in-store use; share via link; use gift card at checkout.

---

## 5. Phase 4 — No Mobile Work (#7)

**Feature 07: Gamification proposals (ST → MHG)** — Consultation only. No mobile app implementation tasks.

---

## 6. Phase 5 — Mobile Tasks (#9): Crowd selling marketplace

All tasks below are mobile app only (backend/API assumed available).

| # | Area | Mobile tasks |
|---|------|----------------------|
| 1 | Navigation | Add a Marketplace tab/section in the main app navigation (e.g. bottom nav or drawer). |
| 2 | Browse | Marketplace browse screen: grid/list view; filters (category, price, condition, location); pull-to-refresh. |
| 3 | Listing creation | Flow to create a listing: multi-photo upload, title/description, condition, set price or auction, preview before publish. |
| 4 | Auction UI | For auction listings: live bid counter, countdown timer, place-bid control, outbid push notification handling. |
| 5 | Seller dashboard | Screen(s) for seller: my active listings, sales history, earnings summary, payout requests. |
| 6 | Buyer purchase | Use existing checkout and payment gateways for buying a marketplace item (fixed price or won auction). |
| 7 | Messaging | In-app chat/conversation between buyer and seller (thread per listing or order). |
| 8 | Disputes | Flow for buyer to open a dispute: form + photo evidence upload; view dispute status. |
| 9 | Seller profile | Seller profile page with their listings and ratings/reviews from buyers. |
| 10 | Push notifications | Handle push for: outbid, auction won, item sold, dispute update, payout processed. |

**Key files:** New marketplace feature under `lib/features/marketplace/` (or similar): browse, listing detail, create listing, auction UI, seller dashboard, messaging, dispute flow, seller profile; `lib/features/checkout/` (reuse); `lib/features/notifications/` (new notification types); app-level navigation/routes.

**Acceptance criteria (mobile):** User can open Marketplace, browse and filter, create listings, bid or buy, use checkout, message seller, open disputes, view seller profile and ratings; relevant push notifications work.

---

## 7. Mobile Implementation Checklist

| Phase | # | Feature | Mobile tasks | Done |
|-------|---|---------|--------------|------|
| 1 | 1 | Shopify bug | No mobile work | — |
| 1 | 3 | Loyalty dashboard | Batch expiry + transaction detail expiry | ☐ |
| 1 | 4 | Order ref in loyalty | Order ref in points history + tap to order | ☐ |
| 2 | 2 | Expiry notifications | Handler + deep link + batch expiry in UI | ☐ |
| 2 | 5 | Push training | No mobile work | — |
| 3 | 6 | Goal game + Instagram | 5-ball game + Instagram auth & onboarding | ☐ |
| 3 | 8 | Gift card | Purchase, wallet, QR, share, checkout | ☐ |
| 4 | 7 | Gamification consultation | No mobile work | — |
| 5 | 9 | Crowd selling | Tab, browse, create, auction, seller, checkout, messaging, disputes, profile, push | ☐ |

Mark **Done** when mobile acceptance criteria for that feature are met and signed off.

---

## 8. Reference

- **Full scope (backend, admin, phasing):** [Scope Features Planning](scope-features-planning.md).
- This document does not change scope or costs; it only specifies **mobile app** implementation for the scoped work.
