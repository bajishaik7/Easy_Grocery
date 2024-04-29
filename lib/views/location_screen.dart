import 'package:easy_grocery/consts/const_button.dart';
import 'package:easy_grocery/consts/const_test.dart';
import 'package:easy_grocery/views/dashboard_screen.dart';
import 'package:easy_grocery/views/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
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
        width: width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 200,
                  child: Image.asset("assets/images/location.png")),
              SizedBox(
                height: 15,
              ),
              ConstText(
                text: "Select Your Location",
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                height: 10,
              ),
              ConstText(
                text: "Swithch on your location to stay in tune with",
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xff7C7C7C),
              ),
              ConstText(
                text: "what’s happening in your area",
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff7C7C7C),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ConstText(
                    text: "Your zone",
                    fontSize: 16,
                    color: Color(0xff7C7C7C),
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              Container(
                width: width,
                // margin: EdgeInsets.symmetric(horizontal: 10),
                height: height * 40 / height,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black12, width: 2))),
                child: TextFormField(
                  onChanged: (v) {
                    setState(() {
                      // maxLength = v.length;
                    });
                  },
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      enabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ConstText(
                    text: "Your Area",
                    fontSize: 16,
                    color: Color(0xff7C7C7C),
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              Container(
                width: width,
                // margin: EdgeInsets.symmetric(horizontal: 10),
                height: height * 40 / height,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black12, width: 2))),
                child: TextFormField(
                  onChanged: (v) {
                    setState(() {
                      // maxLength = v.length;
                    });
                  },
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      enabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ConstButton(
                  child: ConstText(
                    text: "Submit",
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  onPressed: () {
                    Get.offAll(() => DashBoardScreen(),
                        transition: Transition.rightToLeft);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
