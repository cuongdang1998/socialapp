import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'config/app_config.dart';
import 'config/navigation_util.dart';
import 'config/themes.dart';
import 'generated/l10n.dart';
import 'utils/di/injection.dart';
import 'utils/route/app_routing.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Listen for flavor triggered by iOS / android build
  await const MethodChannel('flavor').invokeMethod<String>('getFlavor').then(
    (String flavor) async {
      final appConfig = AppConfig.getInstance(flavorName: flavor);
      print("App Config : ${appConfig.apiBaseUrl}");
    },
  ).catchError(
    (error) {
      AppConfig.getInstance(flavorName: "development");

      print("Error when set up enviroment $error");
    },
  );

  await setupInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Social App',
      navigatorKey: NavigationUtil.rootKey,
      debugShowCheckedModeBanner: false,
      initialRoute: RouteDefine.MainScreen.name,
      onGenerateRoute: AppRouting.generateRoute,
      theme: AppTheme().lightTheme(context),
      darkTheme: AppTheme().darkTheme(context),
      themeMode: ThemeMode.system,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
