import 'package:easy_grocery/views/dashboard_screen.dart';
import 'package:easy_grocery/views/onboarding_screen.dart';
import 'package:easy_grocery/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Easy Grocery',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff53B175)),
        fontFamily: "Gilroy",
        useMaterial3: true,
      ),
      home:
          //  DashBoardScreen()
          FutureBuilder(
              future: Future.delayed(Duration(seconds: 6)),
              builder: (ctx, timer) => timer.connectionState ==
                      ConnectionState.done
                  ? OnBoardingScreen() //Screen to navigate to once the splashScreen is done.
                  : SplashScreen()),
    );
  }
}
/*
import 'package:flutter/material.dart';
import 'package:task_shaikbaji/login_page.dart';
import 'package:task_shaikbaji/profile_page.dart';
import 'package:task_shaikbaji/restaurant1.dart';
import 'package:task_shaikbaji/signup_page.dart';
import 'package:task_shaikbaji/vew_restaurants.dart';
import 'package:lottie/lottie.dart';

import 'gmaps.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Gmaps()
        //  FutureBuilder(
        //     future: Future.delayed(Duration(seconds: 6)),
        //     builder: (ctx, timer) => timer.connectionState == ConnectionState.done
        //         ? LoginPage() //Screen to navigate to once the splashScreen is done.
        //         :
        //         Container(
        //             decoration: BoxDecoration(
        //               gradient: LinearGradient(
        //                   colors: [Color(0xff5CC2E0), Color(0xff805CFF)],
        //                   begin: Alignment.topCenter,
        //                   end: Alignment.bottomCenter),
        //             ),
        //             child: Column(
        //               mainAxisAlignment: MainAxisAlignment.center,
        //               children: [
        //                 Lottie.asset("assets/images/lottie.json"),
        //                 Lottie.asset("assets/images/wl.json"),
        //               ],
        //             ))),
        );
  }
}


 */
