import 'package:flutter/foundation.dart';

import 'package:go_router/go_router.dart';

import 'package:app/util/constant/route_path.dart';

import 'package:app/presentation/splash/view/splash_page.dart';
import 'package:app/presentation/login/view/login_page.dart';

class PlaygroundRouter {

  GoRouter instance = GoRouter(
    debugLogDiagnostics: kDebugMode,
    initialLocation: RoutePath.splash,
    routes: [
      /// 스플래쉬
      GoRoute(
        path: RoutePath.splash,
        name: RouteName.splash,
        builder: (context, state) => const SplashPage(),
      ),

      /// 로그인
      GoRoute(
        path: RoutePath.login,
        name: RouteName.login,
        builder: (context, state) {
          return const LoginPage();
        },
      ),

      /// 메인
      
    ],
  );

  // final GoRoute _splashRoute = GoRoute(
  //   path: RoutePath.splash,
  //   name: RouteName.splash,
  //   builder: (context, state) => const SplashPage(),
  // );

  // final GoRoute _loginRoute = GoRoute(
  //   path: RoutePath.login,
  //   name: RouteName.login,
  //   builder: (context, state) {
  //     return const LoginPage();
  //   },
  // );
}
