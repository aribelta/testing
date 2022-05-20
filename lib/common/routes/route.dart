import 'package:flutter/material.dart';
import 'package:stars_apps/common/animations/page_route_builder.dart';
import 'package:stars_apps/data/models/constellations.dart';
import 'package:stars_apps/ui/pages/about_screen.dart';
import 'package:stars_apps/ui/pages/detail_screen.dart';
import 'package:stars_apps/ui/pages/get_start_screen.dart';
import 'package:stars_apps/ui/pages/home_screen.dart';
import 'package:stars_apps/ui/pages/splash_screen.dart';

const String splashRoute = '/';
const String getStartedRoute = '/getStartedRoute';
const String homeRoute = '/homeRoute';
const String detailRoute = '/detailRoute';
const String aboutRoute = '/aboutRoute';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return ZoomAnimasi(page: const SplashScreen());
      case getStartedRoute:
        return SlideToLeft(page: const GetStarted());
      case homeRoute:
        return SlideToLeft(page: const HomeScreen());
      case detailRoute:
        var args = settings.arguments as Constellations;
        return SlideToLeft(page: DetailScreen(args));
      case aboutRoute:
        return SlideToLeft(page: const AboutScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return const Scaffold(
          body: Center(child: Text('Error page')),
        );
      },
    );
  }
}
