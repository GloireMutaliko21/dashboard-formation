// ignore_for_file: file_names

import 'package:fluro/fluro.dart';
import 'package:formation_dashboard/SideBar.dart';
import '../SplashCreen.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static final Handler _splashHandler = Handler(
      handlerFunc: (context,
              Map<String, dynamic>
                  params) => // Retourner ici en cas de probleme
          const SplashScreen());

  static final Handler _mainHandler = Handler(
      handlerFunc: (context,
              Map<String, dynamic>
                  params) => // Retourner ici en cas de probleme
          LandingPage(
            page: params['name'][0],
            extra: '',
          ));

  static final Handler _mainHandler2 = Handler(
      handlerFunc: (context,
              Map<String, dynamic>
                  params) => // Retourner ici en cas de probleme
          LandingPage(
            page: params['name'][0],
            extra: params['extra'][0],
          ));

  static void setupRouter() {
    router.define(
      '/',
      handler: _splashHandler,
    );
    router.define('/main/:name',
        handler: _mainHandler, transitionType: TransitionType.fadeIn);

    router.define('/main/:name/:extra',
        handler: _mainHandler2, transitionType: TransitionType.fadeIn);
  }
}
