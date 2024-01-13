import 'package:flutter/material.dart';
import 'package:trip_badi_app/product/theme/light_theme.dart';
import 'package:trip_badi_app/screens/home/home_nav_screen.dart';
import 'package:trip_badi_app/screens/home/home_screen.dart';
import 'package:trip_badi_app/screens/login/login_screen.dart';
import 'package:trip_badi_app/screens/message/message_screen.dart';
import 'package:trip_badi_app/screens/profile/profile_screen.dart';
import 'package:trip_badi_app/screens/register/register_screen.dart';
import 'package:trip_badi_app/screens/splash/splash_screen.dart';
import 'package:trip_badi_app/screens/travel_plans_create/travel_plan_create_screen.dart';
import 'package:trip_badi_app/screens/travels/travels_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightTheme().theme,
      home: const Home(),
    );
  }
}
