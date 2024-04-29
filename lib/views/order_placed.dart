import 'package:easy_grocery/consts/const_button.dart';
import 'package:easy_grocery/consts/const_test.dart';
import 'package:easy_grocery/views/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderPlaced extends StatelessWidget {
  const OrderPlaced({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.sizeOf(context).height;
    var w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: h * 150 / h,
          ),
          Container(
              margin: EdgeInsets.only(right: 30),
              height: h * 250 / h,
              width: w * 250 / w,
              child: Image.asset("assets/images/success.png")),
          ConstText(
            text: "You Order has been\nAccepted",
            textAlign: TextAlign.center,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          ConstText(
            text:
                "Your item has been placed and is on\nit's way to being processed",
            textAlign: TextAlign.center,
            fontSize: 16,
            color: Color(0xff7C7C7C),
            fontWeight: FontWeight.normal,
          ),
          Spacer(),
          ConstButton(
            child: ConstText(
              text: "Track Order",
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            onPressed: () {
              Get.offAll(DashBoardScreen());
            },
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Get.offAll(DashBoardScreen());
            },
            child: ConstText(
              text: "Back to home",
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          )
        ]),
      ),
    );
  }
}
