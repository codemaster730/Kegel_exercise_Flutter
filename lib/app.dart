import 'package:flutter/material.dart';
import 'route_generator.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';
import 'models/setting.dart';
import 'repository/settings_repository.dart' as settingRepo;
import 'helpers/app_config.dart' as config;

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    settingRepo.initSettings();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: settingRepo.setting,
        builder: (context, Setting _setting, _) {
          return MaterialApp(
            theme: ThemeData(
              primaryColor: Color(0xFFF5739E),
              // primaryColor: config.Colors().mainColor(0.2),
              //primaryColor: Color(_setting.mainColor),
              backgroundColor: Color(0xFFF5F7FA),
              textTheme: TextTheme(
                headline1: TextStyle(
                  color: Colors.black,
                  fontSize: 37,
                  fontWeight: FontWeight.bold,
                ),
                headline2: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                headline5: TextStyle(
                  color: Colors.black,
                  height: 1,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                headline6: TextStyle(
                  color: Color(0xFF5B5B5B),
                  height: 1.4,
                ),
                subtitle1: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                subtitle2: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary: Color(0xFFFD7452),
                  textStyle: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            initialRoute: '/Splash',
            onGenerateRoute: RouteGenerator.generateRoute,
            locale: _setting.mobileLanguage.value,
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
