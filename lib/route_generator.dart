import 'package:exercise_app/pages/ExerciseWidget.dart';
import 'package:flutter/material.dart';
import 'pages/CompleteExerciseWidget.dart';
import 'pages/pages.dart';
import 'pages/splash_screen.dart';
import 'pages/DayExercise.dart';
import 'pages/WhatsKegel.dart';
import 'pages/WhatBenefits.dart';
import 'pages/CanKegel.dart';
import 'pages/HowKegel.dart';
import 'pages/FindMuscles.dart';
import 'pages/PleaseNote.dart';
import 'pages/Disclaimer.dart';
import 'pages/WhatBenefitsForWoman.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case '/Splash':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/DayExercise':
        return MaterialPageRoute(builder: (_) => DayExerciseWidget());
      case '/WhatsKegel':
        return MaterialPageRoute(builder: (_) => WhatsKegelWidget());
      case '/WhatBenefits':
        return MaterialPageRoute(builder: (_) => WhatBenefitsWidget());
      case '/WhatBenefitsForWoman':
        return MaterialPageRoute(builder: (_) => WhatBenefitsForWomanWidget());
      case '/CanKegel':
        return MaterialPageRoute(builder: (_) => CanKegelWidget());
      case '/HowKegel':
        return MaterialPageRoute(builder: (_) => HowKegelWidget());
      case '/FindMuscles':
        return MaterialPageRoute(builder: (_) => FindMusclesWidget());
      case '/PleaseNote':
        return MaterialPageRoute(builder: (_) => PleaseNoteWidget());
      case '/Disclaimer':
        return MaterialPageRoute(builder: (_) => DisclaimerWidget());
      case '/Pages':
        return MaterialPageRoute(builder: (_) => PagesWidget(currentTab: args));
      case '/Exercise':
        return MaterialPageRoute(builder: (_) => ExerciseWidget());
      case '/Complete':
        return MaterialPageRoute(builder: (_) => CompleteExerciseWidget());
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(
            builder: (_) =>
                Scaffold(body: SafeArea(child: Text('Route Error'))));
    }
  }
}
