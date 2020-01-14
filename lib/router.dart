import 'package:flutter/material.dart';
import 'package:flutter_keep_alive_skeleton/screens/Home.dart';
import 'package:flutter_keep_alive_skeleton/screens/Second.dart';
import 'package:flutter_keep_alive_skeleton/screens/UndefinedView.dart';
import 'package:flutter_keep_alive_skeleton/constants/router.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
            settings: RouteSettings(name: settings.name, isInitialRoute: true),
            builder: (_) => Home()
        );
      case secondRoute:
        return MaterialPageRoute(
            settings: RouteSettings(name: settings.name, isInitialRoute: true),
            builder: (_) => Second()
        );
      default:
        return MaterialPageRoute(builder: (context) => UndefinedView());
    }
  }
}
