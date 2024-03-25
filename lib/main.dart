import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/screens/bottom_nav.dart';
import 'package:food_delivery/utils/app_routes.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
      
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        onGenerateRoute: (settings) => Routes.onGenerate(settings)
      
      ),
    );
  }
}

