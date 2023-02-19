import 'package:get/get.dart';
import 'package:greengrocer/src/pages/auth/view/sing_in_screen.dart';
import 'package:greengrocer/src/pages/auth/view/sing_up_screen.dart';
import 'package:greengrocer/src/pages/base/base_screen.dart';
import 'package:greengrocer/src/pages/splash/splash_screen.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(
      page: () => const SplashScreen(),
      name: PagesRoutes.splashRoute,
    ),
    GetPage(
      page: () => StateInScreen(),
      name: PagesRoutes.stateRoute,
    ),
    GetPage(
      page: () => SingUpScreen(),
      name: PagesRoutes.signUpRoute,
    ),
    GetPage(
      page: () => const BaseScreen(),
      name: PagesRoutes.baseRoute,
    ),
  ];
}

abstract class PagesRoutes {
  static const String splashRoute = '/splash'; //Tela de inicio do APP
  static const String stateRoute = '/State'; //tela de login
  static const String signUpRoute = '/singup'; //Tela de cadastro do usuario
  static const String baseRoute = '/'; //Tela produtos
}
