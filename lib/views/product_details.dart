import 'package:easy_grocery/consts/const_button.dart';
import 'package:easy_grocery/consts/const_test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatefulWidget {
  String image;
  String name;
  String qu;
  ProductDetails(
      {super.key, required this.image, required this.name, required this.qu});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF2F3F2),
        leading: InkWell(
          child: Icon(Icons.arrow_back_ios_new),
          onTap: () {
            Get.back();
          },
        ),
        actions: [
          Icon(Icons.ios_share_rounded),
          SizedBox(
            width: width * 10 / width,
          )
        ],
      ),
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: width,
                height: height * 200 / height,
                decoration: BoxDecoration(
                    color: Color(0xffF2F3F2),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Image.asset(
                  "${widget.image}",
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: width * 15 / width,
                    vertical: height * 20 / height),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ConstText(
                          text: "${widget.name}",
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                        ConstText(
                          text: "${widget.qu}",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff7C7C7C),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.favorite_border,
                      size: 26,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: width * 15 / width),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 120,
                        child: Image.asset("assets/images/plus.png")),
                    ConstText(
                      text: "\$4.99",
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 15 / width),
                child: Divider(
                  color: Colors.black26,
                  height: height * 20 / height,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: width * 15 / width),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ConstText(
                          text: "Product Details",
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        Icon(Icons.keyboard_arrow_down_rounded)
                      ],
                    ),
                    SizedBox(
                      height: height * 10 / height,
                    ),
                    ConstText(
                        text:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,"),
                    Divider(
                      color: Colors.black26,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ConstText(
                          text: "Nutritions",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        Row(
                          children: [
                            Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    color: Color(0xffEBEBEB),
                                    borderRadius: BorderRadius.circular(8)),
                                child: ConstText(text: "100 gr")),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.black26,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ConstText(
                          text: "Review",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/star.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ConstButton(
                  child: ConstText(
                    text: "Add to Basket",
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
