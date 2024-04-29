import 'package:easy_grocery/consts/const_test.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff53B175),
      body: Center(
        child: Container(
          height: 80,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 45,
                  width: 45,
                  child: Image.asset(
                    'assets/images/oc.png',
                    fit: BoxFit.fitHeight,
                  )),
              SizedBox(
                width: 10,
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                ConstText(
                  text: "Easy Grocery",
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
                ConstText(
                  text: "At Your Door Steps",
                  color: Colors.white,
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
