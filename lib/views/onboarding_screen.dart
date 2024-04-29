import 'package:easy_grocery/consts/const_button.dart';
import 'package:easy_grocery/consts/const_test.dart';
import 'package:easy_grocery/views/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Stack(children: [
        Container(
          color: Colors.black,
          height: height,
          width: width,
          child: Image.asset(
            "assets/images/1st.png",
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
            bottom: 50,
            child: Container(
                // color: Colors.amber,
                width: width,
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 45,
                        width: 45,
                        child: Image.asset(
                          'assets/images/oc.png',
                          fit: BoxFit.fitHeight,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    ConstText(
                      text: "Welcome\nto our store",
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      textAlign: TextAlign.center,
                    ),
                    ConstText(
                      text: "Get your groceries in as fast as one hour",
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: ConstButton(
                          child: ConstText(
                            text: "Get Started",
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          onPressed: () {
                            Get.to(() => SigninScreen(),
                                transition: Transition.rightToLeft);
                          }),
                    )
                  ],
                )))
      ]),
    );
  }
}
