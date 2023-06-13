import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:mhg/features/auth/sign_up/binding/sign_up_binding.dart';
import 'package:mhg/features/auth/sign_up/view/pages/sign_up_view.dart';
import 'package:mhg/features/auth/verification/binding/verification_binding.dart';
import 'package:mhg/features/auth/verification/view/pages/verfication_page.dart';
import 'package:mhg/features/auth/signin/binding/sign_in_binding.dart';
import 'package:mhg/features/auth/signin/view/pages/sign_in_page.dart';
import 'package:mhg/features/mainwrapper/binding/main_wrapper_bindings.dart';
import 'package:mhg/features/mainwrapper/view/pages/main_wrapper.dart';
import 'package:mhg/features/notification_permission/view/pages/norification_permission.dart';
import 'package:mhg/features/notifications/binding/notification_binding.dart';
import 'package:mhg/features/notifications/view/pages/notifications_page.dart';
import 'package:mhg/features/on_board/binding/on_board_binding.dart';
import 'package:mhg/features/on_board/view/pages/on_board_view.dart';
import 'package:mhg/features/auth/otp/bindings/otp_bindings.dart';
import 'package:mhg/features/personal_infromation/view/pages/personal_information.dart';
import 'package:mhg/features/product_details/view/pages/product_details_page.dart';
import 'package:mhg/features/profile/view/pages/profile_view.dart';
import 'package:mhg/features/rewards/pages/rewards_page.dart';
import 'package:mhg/features/setting/binding/setting_binding.dart';
import 'package:mhg/features/setting/view/pages/setting_view.dart';
import 'package:mhg/features/splash/binding/splash_binding.dart';
import 'package:mhg/features/splash/view/splash_view.dart';
import '../../features/auth/otp/view/pages/otp.dart';
import '../../features/personal_infromation/binding/peronal_informatiom_binding.dart';

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
    ),
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
      name: '/product',
      page: () => const ProductPage(),
     // binding: PersonalInformationBinding(),
    ),
  ];
}
