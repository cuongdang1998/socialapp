import 'package:flutter/material.dart';
import 'package:social_app/presentation/home/home_route.dart';
import 'package:social_app/presentation/login/login_route.dart';
import 'package:social_app/presentation/main_screen/main_route.dart';

enum RouteDefine {
  MainScreen,
  LoginScreen,
  HomeScreen,
}

class AppRouting {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    final routes = <String, WidgetBuilder>{
      RouteDefine.MainScreen.name: (_) => MainRoute.route,
      RouteDefine.LoginScreen.name: (_) => LoginRoute.route,
      RouteDefine.HomeScreen.name: (_) => HomeRoute.route,
    };

    final routeBuilder = routes[settings.name];

    return _NoAnimationMaterialPageRoute(
      builder: (context) => routeBuilder(context),
      settings: RouteSettings(name: settings.name),
    );
  }
}

class _NoAnimationMaterialPageRoute<T> extends MaterialPageRoute<T> {
  _NoAnimationMaterialPageRoute({
    @required WidgetBuilder builder,
    RouteSettings settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
          builder: builder,
          maintainState: maintainState,
          settings: settings,
          fullscreenDialog: fullscreenDialog,
        );

  @override
  Widget buildTransitions(_, __, ___, Widget child) => child;
}

extension RouteExt on Object {
  /// Use this to get the enum value converted to string.
  ///
  /// Eg.
  /// ```dart
  /// print(SomeEnum.someValue.name) // someValue
  /// ```
  ///
  String get name => toString().substring(toString().indexOf('.') + 1);
}
