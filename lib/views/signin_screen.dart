import 'package:easy_grocery/consts/const_button.dart';
import 'package:easy_grocery/consts/const_test.dart';
import 'package:easy_grocery/views/verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  // TextEditingController maxLength = TextEditingController();
  int maxLength = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: width,
                  height: 315,
                  child: Image.asset("assets/images/2nd.png")),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ConstText(
                          text: "Get your groceries\nwith Easy Grocery",
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: width,
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: height * 50 / height,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black12, width: 2))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/india.png",
                            width: 28,
                            height: 28,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "+91",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.only(bottom: 9),
                        child: TextFormField(
                          onChanged: (v) {
                            setState(() {
                              maxLength = v.length;
                            });
                          },
                          maxLength: 10,
                          keyboardAppearance: Brightness.light,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                          keyboardType: TextInputType.phone,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                              counterText: "",
                              enabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28,
              ),
              maxLength != 10
                  ? ConstText(
                      text: 'Or connect with social media',
                      fontSize: 14,
                      color: Color(0xff828282),
                      fontWeight: FontWeight.w700,
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => VerificationScreen(),
                                transition: Transition.rightToLeft);
                          },
                          child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset("assets/images/next.png")),
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
              SizedBox(
                height: 28,
              ),
              maxLength != 10
                  ? ConstButton(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      color: Color(0xff5383EC),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset("assets/images/google.png"),
                          SizedBox(
                            width: 40,
                          ),
                          ConstText(
                            text: "Continue with Google",
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          )
                        ],
                      ),
                      onPressed: () {
                        Get.to(() => VerificationScreen(),
                            transition: Transition.rightToLeft);
                      })
                  : SizedBox(), //4A66AC
              SizedBox(
                height: 20,
              ),
              maxLength != 10
                  ? ConstButton(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      color: Color(0xff4A66AC),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset("assets/images/fb.png"),
                          SizedBox(
                            width: 40,
                          ),
                          ConstText(
                            text: "Continue with Facebook",
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          )
                        ],
                      ),
                      onPressed: () {
                        Get.to(() => VerificationScreen(),
                            transition: Transition.rightToLeft);
                      })
                  : SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
