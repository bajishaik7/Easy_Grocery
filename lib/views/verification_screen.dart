import 'package:easy_grocery/consts/const_test.dart';
import 'package:easy_grocery/views/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  int maxLength = 0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            ConstText(
              text: "Enter your 4-digit code",
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            SizedBox(
              height: 15,
            ),
            ConstText(
              text: "Code",
              fontSize: 16,
              color: Color(0xff7C7C7C),
            ),
            Container(
              width: width,
              // margin: EdgeInsets.symmetric(horizontal: 10),
              height: height * 50 / height,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.black12, width: 2))),
              child: TextFormField(
                onChanged: (v) {
                  setState(() {
                    maxLength = v.length;
                  });
                },
                maxLength: 4,
                keyboardAppearance: Brightness.light,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
                keyboardType: TextInputType.phone,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    hintText: "- - - -",
                    counterText: "",
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ConstText(
                  text: "Resend Code",
                  color: Color(0xff53B175),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                maxLength != 4
                    ? SizedBox()
                    : InkWell(
                        onTap: () {
                          Get.to(() => LocationScreen());
                        },
                        child: SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.asset("assets/images/next.png")),
                      ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
