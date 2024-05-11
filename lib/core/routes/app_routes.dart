import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:mhg/features/about_us/view/pages/about_us_page.dart';
import 'package:mhg/features/allproducts/binding/all_products_binding.dart';
import 'package:mhg/features/allproducts/view/pages/all_products_page.dart';
import 'package:mhg/features/auth/sign_up/binding/sign_up_binding.dart';
import 'package:mhg/features/auth/sign_up/view/pages/sign_up_view.dart';
import 'package:mhg/features/auth/verification/binding/verification_binding.dart';
import 'package:mhg/features/auth/verification/view/pages/verfication_page.dart';
import 'package:mhg/features/auth/signin/binding/sign_in_binding.dart';
import 'package:mhg/features/auth/signin/view/pages/sign_in_page.dart';
import 'package:mhg/features/checkout/binding/checkout_bindings.dart';
import 'package:mhg/features/checkout/views/pages/add_payment_method_webview_page.dart';
import 'package:mhg/features/checkout/views/pages/payment_methods_page.dart';
import 'package:mhg/features/forgot_password/binding/forget_password_binding.dart';
import 'package:mhg/features/forgot_password/view/pages/forget_view.dart';
import 'package:mhg/features/forgot_password/view/pages/reset_password.dart';

import 'package:mhg/features/mainwrapper/binding/main_wrapper_bindings.dart';
import 'package:mhg/features/mainwrapper/view/pages/main_wrapper.dart';
import 'package:mhg/features/checkout/views/pages/checkout_page.dart';
import 'package:mhg/features/myorders/binding/my_orders_binding.dart';
import 'package:mhg/features/myorders/view/pages/my_order_detail.dart';
import 'package:mhg/features/myorders/view/pages/my_orders_page.dart';
import 'package:mhg/features/notification_permission/view/pages/norification_permission.dart';
import 'package:mhg/features/notifications/binding/notification_binding.dart';
import 'package:mhg/features/notifications/view/pages/notifications_page.dart';
import 'package:mhg/features/on_board/binding/on_board_binding.dart';
import 'package:mhg/features/on_board/view/pages/on_board_view.dart';
import 'package:mhg/features/auth/otp/bindings/otp_bindings.dart';
import 'package:mhg/features/personal_infromation/view/pages/personal_information.dart';
import 'package:mhg/features/product_details/bindings/product_details_binding.dart';
import 'package:mhg/features/product_details/view/pages/product_details_page.dart';
import 'package:mhg/features/products_page/binding/products_page_binding.dart';
import 'package:mhg/features/products_page/view/pages/product_page.dart';
import 'package:mhg/features/profile/view/pages/invite_friends.dart';
import 'package:mhg/features/profile/view/pages/profile_view.dart';
import 'package:mhg/features/profile/view/pages/send_points.dart';
import 'package:mhg/features/rewards/bindings/reward_bindings.dart';
import 'package:mhg/features/rewards/pages/rewards_page.dart';
import 'package:mhg/features/search/view/pages/search_page.dart';
import 'package:mhg/features/setting/binding/setting_binding.dart';
import 'package:mhg/features/setting/view/pages/privacy_policy.dart';
import 'package:mhg/features/setting/view/pages/setting_view.dart';
import 'package:mhg/features/setting/view/pages/terms_and_conditions_page.dart';
import 'package:mhg/features/splash/binding/splash_binding.dart';
import 'package:mhg/features/splash/view/splash_view.dart';
import 'package:mhg/features/stroresmap/bindings/stores_map_binding.dart';
import 'package:mhg/features/stroresmap/view/pages/stores_map_page.dart';
import 'package:mhg/features/success_order/binding/success_order_binding.dart';
import 'package:mhg/features/success_order/view/pages/guest_sucess_order.dart';
import 'package:mhg/features/success_order/view/pages/success_order_view.dart';
import '../../features/about_us/binding/about_us_bindings.dart';
import '../../features/auth/otp/view/pages/otp.dart';
import '../../features/categories/view/pages/categories_page.dart';
import '../../features/categories/view/pages/sub_categories_page.dart';
import '../../features/my_wish_list/view/pages/my_wish_list.dart';
import '../../features/personal_infromation/binding/peronal_informatiom_binding.dart';
import '../../features/search/binding/search_binding.dart';
import '../../features/swipe/binding/swipe_binding.dart';
import '../../features/swipe/view/pages/swipe_page.dart';

class AppRoutes {
  static List<GetPage> getRoutes = [
    GetPage(
        name: '/splash',
        page: () => const SplashView(),
        binding: SplashBinding()),
    GetPage(
        name: '/onBoard',
        page: () => const OnBoardView(),
        binding: OnBoardBinding()),
    GetPage(
      name: '/notification_permission',
      page: () => const NotificationPermissionPage(),
    ),
    GetPage(
        name: '/signIn',
        page: () => const SignInPage(),
        binding: SignInBinding()),
    GetPage(
        name: '/signUp',
        page: () => const SignUpPage(),
        binding: SignUpBinding()),
    GetPage(
      name: '/verification',
      page: () => const VerificationPage(),
      binding: VerificationBinding(),
    ),
    GetPage(
      name: '/otp',
      page: () => const OtpPage(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: '/main_wrapper',
      page: () => const MainWrapper(),
      binding: MainWrapperBinding(),
    ),
    GetPage(
      name: '/profile',
      page: () => const ProfileView(),
    ),
    GetPage(
        name: '/reward',
        page: () => const RewardsPage(),
        binding: ReqwardsBindings()),
    GetPage(
        name: '/notify',
        page: () => const NotificationsPage(),
        binding: NotificationBinding()),
    GetPage(
      name: '/setting',
      page: () => const SettingPage(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: '/personal_information',
      page: () => PersonalInformation(),
      binding: PersonalInformationBinding(),
    ),
    GetPage(
      name: '/my_orders',
      page: () => const MyOrdersPage(),
      binding: MyOrdersBinding(),
    ),
    GetPage(
      name: '/my_orders_details',
      page: () => const MyOrderDetailPage(),
    ),
    GetPage(
      name: '/success_orders',
      page: () => SuccessOrderView(),
      binding: SuccessOrderBinding(),
    ),
    GetPage(
      name: '/guest_success_orders',
      page: () => GuestSuccessOrderView(),
      binding: SuccessOrderBinding(),
    ),
    GetPage(
      name: '/product_details',
      page: () => const ProductDetailsPage(),
      binding: ProductDetailsBinding(),
    ),
    GetPage(
      name: '/my_wish_list',
      page: () => MyWishList(),
      binding: MyOrdersBinding(),
    ),
    GetPage(
      name: '/categories',
      page: () => const CategoriesPage(indexChosen: 0),
    ),
    GetPage(
      name: '/products_page',
      page: () => const ProductsPage(),
      binding: ProductsPageBinding(),
    ),
    GetPage(name: '/sub_categories', page: () => const SubCategoriesPage()),
    GetPage(
      name: '/search',
      page: () => SearchPage(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: '/checkout',
      page: () => CheckoutPage(),
      binding: CheckoutBinding(),
    ),
    GetPage(
      name: '/payment_methods',
      page: () => PaymentMethodsPage(),
    ),
    GetPage(
      name: '/add_payment_method_web_view',
      page: () => AddPaymentMethodWebViewPage(),
    ),
    GetPage(
        name: '/map', page: () => StoresMapPage(), binding: StoresMapBinding()),
    GetPage(
      name: '/terms_and_conditions',
      page: () => TermsAndConidtionsPage(),
    ),
    GetPage(
      name: '/about_us',
      page: () => AboutUsPage(),
      binding: AboutUsBinding(),
    ),
    GetPage(
      name: '/privacy_policy',
      page: () => PrivacyPolicyPage(),
    ),
    GetPage(
      name: '/send_points',
      page: () => SendPointsPage(),
    ),
    GetPage(
        name: '/forgot_password',
        page: () => const ForgetPasswordView(),
        binding: ForgetPasswordBinding()),
    GetPage(
        name: '/reset_password',
        page: () => const ResetPasswordView(),
        binding: ForgetPasswordBinding()),
    GetPage(
      name: '/invite_friend',
      page: () => const InviteFriendPage(),
    ),
    GetPage(
      name: SwipePage.routeName,
      page: () => const SwipePage(),
      binding: SwipBinding(),
    ),
    GetPage(
        name: '/all_products',
        page: () => const AllProductsPage(),
        binding: AllProductsBindings())
  ];
}
