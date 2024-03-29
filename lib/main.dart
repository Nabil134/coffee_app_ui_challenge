import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Screens/main_screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context , child) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Coffee App Ui',


    home: MainScreen(),
    );
      }
    );
  }
}

