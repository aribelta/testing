import 'package:flutter/material.dart';
import 'package:stars_apps/common/routes/route.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Planetarian',
      debugShowCheckedModeBanner: false,
      initialRoute: splashRoute,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
