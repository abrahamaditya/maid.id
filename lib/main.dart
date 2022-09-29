import 'package:flutter/material.dart';
import 'package:maid/screen/details_client_screen.dart';
import 'package:maid/screen/details_screen.dart';
import 'package:maid/screen/drawer.dart';
import 'package:maid/screen/form.dart';
import 'package:maid/screen/home.dart';
import 'package:maid/screen/on_boarding.dart';
import 'package:maid/screen/profile.dart';
import 'package:maid/screen/profile.dart';
import 'package:maid/screen/splashscreen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
