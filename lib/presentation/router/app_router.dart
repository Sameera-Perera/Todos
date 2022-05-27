import 'package:flutter/material.dart';

import '../../core/exceptions/route_exception.dart';
import '../screens/home/home_screen.dart';

class AppRouter{
  static const String home = '/';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        throw const RouteException('Route not found!');
    }
  }
}