# MHG – Third-Party Dependencies Report

**Generated:** March 11, 2025  
**Source:** [pubspec.yaml](../pubspec.yaml)  
**Scope:** Flutter/Dart packages only (lib/ and test/).

---

## 1. Summary

| Metric | Count |
|--------|--------|
| Production dependencies | 44 (excluding `flutter` SDK) |
| Dev dependencies | 4 |
| Dependency overrides | 4 |
| Packages with direct imports in lib/ | 40 |
| Packages with no direct imports in lib/ | 4 (`smooth_page_indicator`, `radio_group_v2`, `flutter_animarker`, `cupertino_icons`) |

**Quick reference (production packages with direct usage):**

| Package | Version (pubspec) | File count | Scope (short) |
|---------|-------------------|------------|----------------|
| get | ^4.6.6 | 220+ | State, routing, DI |
| dartz | ^0.10.1 | 68 | Either / error handling |
| country_picker | ^2.0.20 | 6 | Country selection (auth, checkout) |
| modal_progress_hud_nsn | ^0.5.1 | 5 | Loading overlay (auth) |
| url_launcher | (commented) | 7 | Open URLs, phone, maps |
| pinput | ^6.0.2 | 3 | OTP input |
| card_swiper | ^3.0.1 | 3 | Image sliders |
| cached_network_image | ^3.4.1 | 3 | Network image cache |
| flutter_html | ^3.0.0-beta.2 | 3 | HTML content |
| dropdown_button2 | ^3.0.0 | 3 | Dropdowns |
| google_maps_flutter | ^2.2.6 | 3 | Stores map |
| get_storage | ^2.1.1 | 3 | Key-value storage |
| firebase_messaging | ^15.2.10 | 2 | Push notifications |
| flutter_dotenv | ^6.0.0 | 2 | .env config |
| share_plus | ^12.0.1 | 2 | Share sheet |
| percent_indicator | ^4.2.2 | 2 | Progress indicators |
| swipe_cards | ^2.0.0+1 | 2 | Swipe feature |
| video_player | (commented) | 2 | Video playback |
| webview_flutter | ^4.2.1 | 2 | WebView (e.g. payment) |
| flutter_hooks | ^0.21.3+1 | 2 | Hooks (search, grid) |
| Others | (see sections) | 1 each | See per-package sections |

**Findings:**

- **Duplicate concern:** Two country-picker packages are used: `country_picker` and `country_code_picker`; consider consolidating.
- **Unpinned or commented versions:** `intl`, `firebase_dynamic_links`, `url_launcher`, `app_tracking_transparency`, `video_player`, `google_sign_in`, `flutter_facebook_auth`, `sign_in_with_apple` have no version or commented version in pubspec.
- **Overrides:** `fluttertoast`, `geolocator_android`, `flutter_plugin_android_lifecycle`, and `win32` are overridden; document reason and compatibility.

---

## 2. Dependency Overrides

| Override | Version | Affects | Notes |
|----------|---------|---------|--------|
| win32 | ^5.15.0 | Transitive (Windows) | Likely for Dart/FFI compatibility. |
| flutter_plugin_android_lifecycle | ^2.0.33 | Android plugin lifecycle | Overrides transitive version. |
| geolocator_android | ^5.0.0 | geolocator | Android implementation of geolocator. |
| fluttertoast | ^9.0.0 | fluttertoast (pubspec has ^8.2.2) | App uses override; ensures newer toast API. |

---

## 3. Production Dependencies

### app_tracking_transparency

- **Version:** Commented (`#^2.0.4`) in pubspec.
- **Scope:** iOS ATT (App Tracking Transparency) prompt for tracking permission.
- **Why used:** To request and handle IDFA/tracking permission on iOS for ads or analytics.
- **Where used:** 1 file – `lib/features/setting/view/widgets/ads.dart`.
- **Notes:** Version is commented; pin and enable if ATT is required for release.

---

### badges

- **Version:** ^3.0.2
- **Scope:** Badge overlay on widgets (e.g. cart count on nav bar icon).
- **Why used:** To show numeric badges on bottom navigation items (e.g. cart, wishlist).
- **Where used:** 1 file – `lib/features/mainwrapper/view/widgets/bottom_nav_bar_items.dart`.
- **Notes:** None.

---

### cached_network_image

- **Version:** ^3.4.1
- **Scope:** Load and cache network images with placeholders.
- **Why used:** Efficient image loading for product images and other remote assets across the app.
- **Where used:** 3 files – `lib/widgets/net_image.dart`, `lib/features/product_details/view/widgets/product_details_comment.dart`, `lib/features/on_board/view/widgets/custom_value_selctor.dart`.
- **Notes:** Central usage via `NetImage` in `lib/widgets/net_image.dart`; other files use it for specific UIs.

---

### card_swiper

- **Version:** ^3.0.1
- **Scope:** Swipeable card/slider UI for home banner and product image carousels.
- **Why used:** Powers image sliders on home and product detail pages.
- **Where used:** 3 files – `lib/features/home/view/widgets/home_slider.dart`, `lib/features/product_details/view/widgets/product_details_slider.dart`, `lib/features/home/view/widgets/custom_dot_swiper.dart`.
- **Notes:** None.

---

### chewie

- **Version:** ^1.2.0
- **Scope:** Video player UI (controls, fullscreen) around `video_player`.
- **Why used:** Better UX for in-app video playback (e.g. product or home videos).
- **Where used:** 1 file – `lib/widgets/video_play.dart`.
- **Notes:** Depends on `video_player`; used in home and product contexts.

---

### country_code_picker

- **Version:** ^3.0.0
- **Scope:** Country/phone code picker in forms.
- **Why used:** Select country/country code (e.g. send points flow).
- **Where used:** 1 file – `lib/features/profile/view/pages/send_points.dart`.
- **Notes:** Second country picker in the project; see `country_picker`. Consider using a single package.

---

### country_picker

- **Version:** ^2.0.20
- **Scope:** Country selection for auth and profile (phone/region).
- **Why used:** Sign-in, sign-up, verification, forgot password, checkout, personal info, and onboarding country selection.
- **Where used:** 6 files – auth (sign_in_controller, sign_up_controller, verification_controller, forget_controller), `lib/features/auth/signin/view/widget/show_country_picker.dart`, `lib/features/checkout/controllers/checkout_controller.dart`.
- **Notes:** Primary country picker; overlaps with `country_code_picker`. Consolidating to one is recommended.

---

### cupertino_icons

- **Version:** ^1.0.2
- **Scope:** Cupertino-style icon set for Flutter.
- **Why used:** Standard Flutter dependency for iOS-style icons when needed.
- **Where used:** No direct imports found in lib/ (icons may be referenced via Flutter framework).
- **Notes:** Typically used implicitly by Material/Cupertino widgets.

---

### dartz

- **Version:** ^0.10.1
- **Scope:** Functional error handling with `Either<L, R>` in repositories.
- **Why used:** Repositories return `Either<Failure, T>` for consistent error handling and to avoid throwing.
- **Where used:** 68 files – all repository interfaces/implementations and many controllers (e.g. `lib/core/httpservices/http_services_impl.dart`, `lib/features/*/repository/*.dart`, various controllers that consume repo results).
- **Notes:** Core to data layer; consider documenting `Failure` and `Either` usage for new contributors.

---

### dropdown_button2

- **Version:** ^3.0.0
- **Scope:** Custom dropdown/select widgets.
- **Why used:** Emirates/region dropdown in checkout, country dropdown in personal info, and filters on product listing.
- **Where used:** 3 files – `lib/features/checkout/views/widgets/emirates_drop_down.dart`, `lib/features/personal_infromation/view/widget/countries_drop_down_widget.dart`, `lib/features/products_page/view/widgets/filter_widget.dart`.
- **Notes:** None.

---

### dynamic_height_grid_view

- **Version:** ^0.0.3
- **Scope:** Grid view with variable-height items.
- **Why used:** Product/search grids that adapt to content height.
- **Where used:** 1 file (active) – `lib/features/search/view/widget/recent_search_body.dart`. Commented import in `lib/features/home/view/widgets/home_shop_by_category_widget.dart`.
- **Notes:** One usage; home category widget has import commented out.

---

### firebase_auth

- **Version:** ^5.7.0
- **Scope:** Firebase Authentication (e.g. phone/link sign-in).
- **Why used:** Backend for phone verification and auth flows.
- **Where used:** 1 file – `lib/features/auth/verification/controller/verification_controller.dart`.
- **Notes:** Used in conjunction with verification/OTP flow.

---

### firebase_core

- **Version:** ^3.15.2
- **Scope:** Initialize Firebase for the app.
- **Why used:** Required before using any Firebase service (messaging, auth, dynamic links).
- **Where used:** 1 file – `lib/app/app.dart`.
- **Notes:** Initialization happens in app bootstrap.

---

### firebase_dynamic_links

- **Version:** Unpinned in pubspec.
- **Scope:** Handle Firebase Dynamic Links (deferred deep links).
- **Why used:** Deep linking for campaigns, invites, and navigation from links.
- **Where used:** 1 file – `lib/core/services/deep_link_service.dart`.
- **Notes:** Pin version in pubspec.

---

### firebase_messaging

- **Version:** ^15.2.10
- **Scope:** FCM push notifications.
- **Why used:** Receive and handle push notifications (foreground/background).
- **Where used:** 2 files – `lib/main.dart`, `lib/core/services/notification_service.dart`.
- **Notes:** Notification service centralizes handling.

---

### flutter_animarker

- **Version:** ^3.2.0
- **Scope:** Animated markers on Google Maps (e.g. for store locations).
- **Why used:** Intended for map marker animations on stores map.
- **Where used:** No direct imports found in lib/ (may be transitive or planned; map UI uses `google_maps_flutter`).
- **Notes:** Consider removing if unused, or add explicit usage for marker animations.

---

### flutter_dotenv

- **Version:** ^6.0.0
- **Scope:** Load environment variables from `.env`.
- **Why used:** API base URL and other env config without hardcoding.
- **Where used:** 2 files – `lib/main.dart`, `lib/app/app.dart`.
- **Notes:** Ensure `.env` is in .gitignore and document required keys (see also security in technical-audit).

---

### flutter_facebook_auth

- **Version:** Commented (`#^6.0.4`) in pubspec.
- **Scope:** Facebook login.
- **Why used:** Social sign-in option on auth screen.
- **Where used:** 1 file – `lib/features/auth/widgets/bottom_third_auth.dart`.
- **Notes:** Version commented; pin if Facebook login is required.

---

### flutter_html

- **Version:** ^3.0.0-beta.2
- **Scope:** Render HTML content in Flutter (e.g. CMS/API content).
- **Why used:** About us, product descriptions, privacy/terms from backend.
- **Where used:** 3 files – `lib/features/about_us/view/widget/about_us_body.dart`, `lib/features/product_details/view/widgets/product_details_info_card.dart`, `lib/features/setting/view/widgets/custom_privacy_widget.dart`.
- **Notes:** Beta version; monitor for stable release and security updates.

---

### flutter_hooks

- **Version:** ^0.21.3+1
- **Scope:** Hooks-based state and lifecycle in widgets.
- **Why used:** Used in search form and dynamic grid for local state/lifecycle.
- **Where used:** 2 files – `lib/features/search/view/widget/search_form.dart`, `lib/widgets/dynamic_grid_view.dart`.
- **Notes:** Limited use; rest of app uses GetX. Consider consistency (either expand hooks or replace with GetX).

---

### flutter_local_notifications

- **Version:** ^21.0.0
- **Scope:** Local notification display (titles, body, actions).
- **Why used:** Show notifications when app is in foreground or from local scheduling.
- **Where used:** 1 file – `lib/core/services/notification_service.dart`.
- **Notes:** Works with FCM; notification_service coordinates both.

---

### flutter_rating_bar

- **Version:** ^4.0.1
- **Scope:** Star (or other) rating display/input.
- **Why used:** Product and review ratings in UI.
- **Where used:** 1 file – `lib/widgets/rating_widget.dart`.
- **Notes:** Reusable via `rating_widget.dart`.

---

### flutter_spinkit

- **Version:** ^5.2.0
- **Scope:** Loading indicators/spinners.
- **Why used:** Consistent loading animation across the app.
- **Where used:** 1 file – `lib/widgets/three_bounce_loading.dart`.
- **Notes:** Centralized in one widget; used wherever loading state is shown.

---

### fluttertoast

- **Version:** ^8.2.2 (overridden to ^9.0.0)
- **Scope:** Toast messages (short-lived feedback).
- **Why used:** Show success/error toasts without blocking UI.
- **Where used:** 1 file – `lib/constants/app_toasts.dart` (likely used app-wide via helper).
- **Notes:** Override in pubspec; ensure compatibility with override version.

---

### flutter_typeahead

- **Version:** ^5.2.0
- **Scope:** Autocomplete/typeahead search field.
- **Why used:** Search suggestions as user types.
- **Where used:** 1 file – `lib/features/search/view/widget/search_form.dart`.
- **Notes:** None.

---

### get

- **Version:** ^4.6.6
- **Scope:** State management (GetX), routing, dependency injection, and bindings.
- **Why used:** Core architecture: controllers, reactive UI (Obx/GetX/GetBuilder), GetMaterialApp routes, and Get.put/Get.find for DI.
- **Where used:** 220+ files across lib/ – every feature (auth, home, checkout, profile, search, categories, orders, cart, wishlist, rewards, notifications, settings, stores map, product details, etc.), plus `lib/main.dart`, `lib/app/app.dart`, `lib/core/routes/app_routes.dart`, and shared widgets.
- **Notes:** Central to app architecture; no alternative state/routing in use.

---

### get_storage

- **Version:** ^2.1.1
- **Scope:** Persistent key-value storage (no encryption).
- **Why used:** Persist token, user prefs, country, currency, and other app state across restarts.
- **Where used:** 3 files – `lib/core/storage/storage_pref.dart`, `lib/app/app.dart`, `lib/features/checkout/controllers/checkout_controller.dart`.
- **Notes:** Sensitive data (e.g. token) stored unencrypted; consider flutter_secure_storage for secrets (see technical-audit).

---

### geolocator

- **Version:** ^14.0.2 (with dependency_override geolocator_android: ^5.0.0)
- **Scope:** Device location (GPS) for store finder.
- **Why used:** Get user location to show nearby stores on map and for map_launcher.
- **Where used:** 1 file – `lib/features/stroresmap/controller/stores_map_controller.dart`.
- **Notes:** Override on Android implementation; ensure permission handling (permission_handler) is consistent.

---

### google_maps_flutter

- **Version:** ^2.2.6
- **Scope:** Display Google Map with store markers.
- **Why used:** Stores map page and store location display.
- **Where used:** 3 files – `lib/features/stroresmap/view/pages/stores_map_page.dart`, `lib/features/stroresmap/controller/stores_map_controller.dart`, `lib/features/stroresmap/model/stores_map_markers.dart`.
- **Notes:** None.

---

### google_sign_in

- **Version:** Commented (`#^6.2.1`) in pubspec.
- **Scope:** Google Sign-In.
- **Why used:** Social sign-in on auth screen.
- **Where used:** 1 file – `lib/features/auth/widgets/bottom_third_auth.dart`.
- **Notes:** Version commented; pin if Google sign-in is required.

---

### http

- **Version:** ^1.2.2
- **Scope:** HTTP client for API calls.
- **Why used:** All backend API requests go through a single HTTP service implementation.
- **Where used:** 1 file – `lib/core/httpservices/http_services_impl.dart` (repositories depend on this service).
- **Notes:** No retries/interceptors by default; technical-audit suggests considering dio for retries and logging.

---

### intl

- **Version:** Unpinned in pubspec.
- **Scope:** Internationalization and formatting (dates, numbers).
- **Why used:** Date/number formatting in app (e.g. in helpers).
- **Where used:** 1 file – `lib/core/helper/app_helper.dart`.
- **Notes:** Pin version in pubspec.

---

### map_launcher

- **Version:** ^4.4.3
- **Scope:** Open external map apps (Google Maps, Apple Maps, etc.) with location.
- **Why used:** “Open in Maps” from stores map to navigate to store address.
- **Where used:** 1 file – `lib/features/stroresmap/controller/stores_map_controller.dart`.
- **Notes:** Used with geolocator and google_maps_flutter in stores feature.

---

### modal_progress_hud_nsn

- **Version:** ^0.5.1
- **Scope:** Full-screen loading overlay (HUD) that blocks interaction.
- **Why used:** Show loading during auth and other async operations (sign-in, sign-up, OTP, forgot password).
- **Where used:** 5 files – `lib/features/auth/signin/view/pages/sign_in_page.dart`, `lib/features/auth/sign_up/view/pages/sign_up_view.dart`, `lib/features/auth/otp/view/pages/otp.dart`, `lib/features/forgot_password/view/pages/forget_view.dart`, `lib/features/forgot_password/view/pages/reset_password.dart`.
- **Notes:** None.

---

### package_info_plus

- **Version:** ^9.0.0
- **Scope:** Read app version/build from platform.
- **Why used:** Display app version (e.g. in settings or update prompt).
- **Where used:** 1 file – `lib/app/app.dart`.
- **Notes:** None.

---

### pay

- **Version:** ^3.3.0
- **Scope:** Apple Pay / Google Pay integration.
- **Why used:** Native pay sheet in checkout.
- **Where used:** 1 file – `lib/features/checkout/views/widgets/apple_pay_widget.dart`.
- **Notes:** Payment feature; ensure PCI/compliance considerations.

---

### percent_indicator

- **Version:** ^4.2.2
- **Scope:** Linear/circular progress indicators (percentage).
- **Why used:** Reward progress or similar progress display in profile/rewards.
- **Where used:** 2 files – `lib/features/profile/view/widgets/reward_widget.dart`, `lib/features/rewards/widgets/reward_header.dart`.
- **Notes:** None.

---

### permission_handler

- **Version:** ^12.0.1
- **Scope:** Request runtime permissions (location, notification, etc.).
- **Why used:** Permission prompts for location (maps), notifications, etc.
- **Where used:** 1 file – `lib/features/product_details/view/widgets/product_check_box_ofs.dart`.
- **Notes:** May be used in more flows; verify all permission-dependent features request permission via this or platform code.

---

### pinput

- **Version:** ^6.0.2
- **Scope:** PIN/OTP input field (styled boxes).
- **Why used:** OTP entry in verification and auth.
- **Where used:** 3 files – `lib/features/auth/otp/view/widget/pin_put_field.dart`, `lib/features/auth/otp/view/widget/otp_theme.dart`, `lib/features/auth/verification/controller/verification_controller.dart`.
- **Notes:** Used with sms_autofill and verification flow.

---

### radio_group_v2

- **Version:** ^3.3.1
- **Scope:** Radio button group widget.
- **Why used:** Declared but no direct import found in lib/.
- **Where used:** No direct imports found in lib/.
- **Notes:** Consider removing if unused, or add usage (e.g. filters, options).

---

### share_plus

- **Version:** ^12.0.1
- **Scope:** Native share sheet (share link/text to other apps).
- **Why used:** Share app or content from profile and deep link service.
- **Where used:** 2 files – `lib/features/profile/view/widgets/share_widget.dart`, `lib/core/services/deep_link_service.dart`.
- **Notes:** None.

---

### sign_in_with_apple

- **Version:** Commented (`#^6.1.0`) in pubspec.
- **Scope:** Sign in with Apple (iOS/Android).
- **Why used:** Social sign-in on auth screen.
- **Where used:** 1 file – `lib/features/auth/widgets/bottom_third_auth.dart`.
- **Notes:** Version commented; pin if Apple sign-in is required.

---

### sms_autofill

- **Version:** ^2.3.0
- **Scope:** Read SMS OTP for autofill (Android) and assist OTP input.
- **Why used:** Improve UX in verification/OTP flow by suggesting OTP from SMS.
- **Where used:** 1 file – `lib/features/auth/verification/controller/verification_controller.dart`.
- **Notes:** Mainly Android; iOS behavior may differ.

---

### smooth_page_indicator

- **Version:** ^2.0.1
- **Scope:** Page/slider dot indicators.
- **Why used:** Declared but no direct import found in lib/ (sliders use custom_dot_swiper or other indicators).
- **Where used:** No direct imports found in lib/.
- **Notes:** Consider removing if unused, or use for slider indicators.

---

### swipe_cards

- **Version:** ^2.0.0+1
- **Scope:** Tinder-style swipeable cards.
- **Why used:** Swipe discovery feature (e.g. products or content).
- **Where used:** 2 files – `lib/features/swipe/view/pages/swipe_page.dart`, `lib/features/swipe/controller/swipe_controller.dart`.
- **Notes:** None.

---

### url_launcher

- **Version:** Commented (`#^6.2.4`) in pubspec.
- **Scope:** Open URLs, phone, email in external browser/app.
- **Why used:** Open links, call numbers, open map links from app.
- **Where used:** 7 files – `lib/core/helper/app_helper.dart`, `lib/features/mainwrapper/controller/main_wrapper_controller.dart`, `lib/features/myorders/view/widgets/my_prder_track.dart`, `lib/features/stroresmap/view/widgets/table_row.dart`, `lib/features/auth/sign_up/view/pages/sign_up_view.dart`, `lib/features/profile/controller/profile_controller.dart`, `lib/features/splash/view/update_view.dart`.
- **Notes:** Version commented; pin in pubspec.

---

### video_player

- **Version:** Commented (`#^2.8.6`) in pubspec.
- **Scope:** Low-level video playback.
- **Why used:** Base for video content; used via chewie for UI.
- **Where used:** 2 files – `lib/widgets/video_play.dart`, `lib/features/home/view/widgets/home_video_test_widget.dart`.
- **Notes:** Version commented; pin. chewie depends on this.

---

### webview_flutter

- **Version:** ^4.2.1
- **Scope:** In-app WebView for web content or payment flows.
- **Why used:** Checkout add-payment-method WebView and generic web content.
- **Where used:** 2 files – `lib/features/checkout/views/pages/add_payment_method_webview_page.dart`, `lib/widgets/webview_show.dart`.
- **Notes:** Payment WebView must be secured (HTTPS, no sensitive data in URL).

---

## 4. Dev Dependencies

### change_app_package_name

- **Version:** ^1.1.0
- **Scope:** CLI to change Android/iOS application ID/package name.
- **Why used:** Build/config tooling, not runtime.
- **Where used:** Not imported in code; used from command line when renaming app.
- **Notes:** None.

---

### flutter_launcher_icons

- **Version:** ^0.14.4
- **Scope:** Generate app launcher icons from config in pubspec.
- **Why used:** Generate Android/iOS icons from `flutter_icons` section.
- **Where used:** Not imported in code; used via `flutter pub run` or similar.
- **Notes:** Configured in pubspec under `flutter_icons`.

---

### flutter_lints

- **Version:** ^6.0.0
- **Scope:** Recommended lint rules for Dart/Flutter.
- **Why used:** Static analysis and code style.
- **Where used:** Referenced in `analysis_options.yaml` (project root).
- **Notes:** None.

---

### flutter_test

- **Version:** SDK (flutter)
- **Scope:** Testing framework for unit/widget tests.
- **Why used:** Run tests.
- **Where used:** Test code (e.g. `test/widget_test.dart`); not in lib/.
- **Notes:** None.

---

## 5. Recommendations

1. **Pin all versions:** Pin or uncomment versions for `intl`, `firebase_dynamic_links`, `url_launcher`, `app_tracking_transparency`, `video_player`, `google_sign_in`, `flutter_facebook_auth`, `sign_in_with_apple`.
2. **Consolidate country pickers:** Use either `country_picker` or `country_code_picker` and remove the other to avoid confusion and duplicate maintenance.
3. **Remove or use unused packages:** Confirm and remove or start using `smooth_page_indicator`, `radio_group_v2`, and `flutter_animarker` (or add explicit usage).
4. **Document overrides:** Add a short comment in pubspec or in this doc for each dependency_override (e.g. why fluttertoast ^9.0.0 is required).
5. **HTTP client:** Consider migrating from `http` to `dio` for retries, interceptors, and error handling (see technical-audit).
6. **Sensitive storage:** Consider `flutter_secure_storage` for token and other sensitive data instead of or in addition to get_storage (see technical-audit).
7. **Flutter_html:** Track stable release of `flutter_html` and plan upgrade from beta; review HTML sanitization for user/CMS content.
