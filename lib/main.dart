import 'package:flutter/material.dart';
import 'core/app_configs/service_locator.dart';
import 'src/screens/pages/home_screen.dart';

void main() {
  serviceLoactor();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
