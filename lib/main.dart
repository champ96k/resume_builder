import 'package:flutter/material.dart';

import 'core/app_configs/route_generator.dart';
import 'core/app_configs/service_locator.dart';
import 'src/screens/pages/edit_resume_screen.dart';

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
    return MaterialApp(
      onGenerateRoute: routeGenerate,
      debugShowCheckedModeBanner: false,
      home: const EditResumeScreen(),
    );
  }
}
