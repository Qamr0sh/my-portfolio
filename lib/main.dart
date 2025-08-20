import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Dashboard/Dependencies/dashboard_binding.dart';
import 'Dashboard/UI/dashboard_screen.dart';
import 'Resources/app_theme.dart' show appTheme;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: ()=>DashboardScreen(), binding: DashboardBinding())
      ],
      theme: appTheme
    );
  }
}