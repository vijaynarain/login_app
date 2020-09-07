import 'package:flutter/material.dart';
import 'package:login_app/otp.dart';
import 'package:login_app/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashScreen(),
        "/otp": (context) => OtpScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
