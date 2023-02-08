import 'package:flutter/material.dart';
import 'package:grabview/Pages/Splash_Screen.dart';

void main() {
  runApp(const GrapView());
}
class GrapView extends StatelessWidget {
  const GrapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GrapView',
      theme: ThemeData.light(),
      home: SplashScreen(),
    );
  }
}


