import 'package:fluro/fluro.dart';
import 'package:flutter_firebase/ui/home_view.dart';
import 'package:flutter_firebase/ui/login_view.dart';
import 'package:flutter_firebase/ui/post_view.dart';
import 'package:flutter_firebase/ui/profile_view.dart';
import 'package:flutter_firebase/ui/signup_view.dart';
import 'package:flutter_firebase/ui/user_view.dart';
import 'constants/app_contstants.dart';

class RouterFluro {
  static Router router = new Router();

  static final homeHandler = Handler(handlerFunc: (context, params) {
    return HomeView();
  });

  static final signupHandler = Handler(handlerFunc: (context, params) {
    return SignupView();
  });

  static final signinHandler = Handler(handlerFunc: (context, params) {
    return LoginView();
  });

  static final postHandler = Handler(handlerFunc: (context, params) {
    return PostView();
  });

  static final profileHandler = Handler(handlerFunc: (context, params) {
    return ProfileView();
  });

  static final userAccountId = Handler(handlerFunc: (context, params) {
    return UserView(params);
  });

  static configRouter() {
    router.define(
      RoutePaths.Home,
      handler: homeHandler,
      transitionType: TransitionType.inFromRight,
    );

    router.define(RoutePaths.Signup, handler: signupHandler);

    router.define(
      RoutePaths.Signin,
      handler: signinHandler,
      transitionType: TransitionType.inFromLeft,
    );

    router.define(RoutePaths.Profile, handler: profileHandler);

    router.define(RoutePaths.Post, handler: postHandler);

    router.define(RoutePaths.Account, handler: userAccountId);
  }
}
