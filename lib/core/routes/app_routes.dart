import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:mhg/features/notification_permission/view/pages/norification_permission.dart';
import 'package:mhg/features/on_board/binding/on_board_binding.dart';
import 'package:mhg/features/on_board/view/pages/on_board_view.dart';
import 'package:mhg/features/otp/bindings/otp_bindings.dart';
import 'package:mhg/features/splash/binding/splash_binding.dart';
import 'package:mhg/features/splash/view/splash_view.dart';

import '../../features/otp/view/pages/otp.dart';

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
      page: () => const NotificationPermission(),
    ),
    GetPage(name: '/otp', page: () => const OtpView(), binding: OtpBinding()),
  ];
}
