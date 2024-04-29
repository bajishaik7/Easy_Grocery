import 'package:easy_grocery/consts/carousel.dart';
import 'package:easy_grocery/consts/const_test.dart';
import 'package:easy_grocery/views/product_details.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  List grid1 = [
    {
      "name": "Organic Banana",
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
      "image": "assets/images/banana.png",
      "qu": "6 Pcs, price"
    },
    {
      "name": "Red Apples",
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
      "image": "assets/images/apple.png",
      "qu": "1kg, price"
    },
    {
      "name": "Organic Banana",
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
      "image": "assets/images/banana.png",
      "qu": "6 Pcs, price"
    },
    {
      "name": "Red Apples",
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
      "image": "assets/images/apple.png",
      "qu": "1kg, price"
    }
  ];
  List grid2 = [
    {
      "name": "Bell Pepper Red",
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
      "image": "assets/images/pep.png",
      "qu": "6 Pcs, price"
    },
    {
      "name": "Ginger",
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
      "image": "assets/images/ginger.png",
      "qu": "1kg, price"
    },
    {
      "name": "Bell Pepper Red",
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
      "image": "assets/images/pep.png",
      "qu": "6 Pcs, price"
    },
    {
      "name": "Ginger",
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
      "image": "assets/images/ginger.png",
      "qu": "1kg, price"
    }
  ];
  List gro = [
    {
      "name": "Pulses",
      "image": "assets/images/pulses.png",
      "clr": Color(0xffF8A44C).withOpacity(0.2)
    },
    {
      "name": "Rice",
      "image": "assets/images/rice.png",
      "clr": Color(0xff53B175).withOpacity(0.2)
    }
  ];
  List meat = [
    {
      "name": "Beef Bone",
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
      "image": "assets/images/redmeat.png",
      "qu": "1kg, price"
    },
    {
      "name": "Boiler Chicken",
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
      "image": "assets/images/chicken.png",
      "qu": "1kg, price"
    },
    {
      "name": "Beef Bone",
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
      "image": "assets/images/redmeat.png",
      "qu": "1kg, price"
    },
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height * 65 / height,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            Image.asset(
              "assets/images/carrat.png",
              height: height * 40 / height,
              width: width * 40 / width,
            ),
            SizedBox(
              height: height * 5 / height,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_pin),
                SizedBox(
                  width: width * 5 / width,
                ),
                ConstText(
                  text: "Bids, Hyderabad",
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  width: width * 25 / width,
                )
              ],
            ),
          ],
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: height,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 10 / height,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              width: width,
              height: height * 55 / height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color(0xffF2F3F2),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_sharp),
                    hintText: "Search store",
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            Expanded(
                child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 20 / height,
                    ),
                    Carouselwidget(),
                    SizedBox(
                      height: height * 15 / height,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ConstText(
                            text: "Exclusive offer",
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                          ConstText(
                            text: "See all",
                            fontSize: 16,
                            color: Color(0xff53b175),
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 5 / height,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      height: height * 200 / height,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: grid1.length,
                          itemBuilder: ((context, index) {
                            return InkWell(
                              onTap: () {
                                Get.to(
                                    () => ProductDetails(
                                          image: '${grid1[index]["image"]}',
                                          name: '${grid1[index]["name"]}',
                                          qu: '${grid1[index]["qu"]}',
                                        ),
                                    transition: Transition.rightToLeft);
                              },
                              child: Container(
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.all(10),
                                width: 160,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(18)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                            height: height * 70 / height,
                                            width: width * 70 / width,
                                            child: Image.asset(
                                                grid1[index]["image"])),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 10 / height,
                                    ),
                                    ConstText(
                                      text: "${grid1[index]["name"]}",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    ConstText(
                                      text: "${grid1[index]["qu"]}",
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    SizedBox(
                                      height: height * 10 / height,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ConstText(
                                          text: "\$4.99",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                        Icon(
                                          FluentIcons.add_square_16_filled,
                                          size: 34,
                                          color: Color(0xff53B175),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          })),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ConstText(
                            text: "Best Selling",
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                          ConstText(
                            text: "See all",
                            fontSize: 16,
                            color: Color(0xff53b175),
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 10 / height,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      height: height * 200 / height,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: grid2.length,
                          itemBuilder: ((context, index) {
                            return InkWell(
                              onTap: () {
                                Get.to(
                                    () => ProductDetails(
                                          image: '${grid2[index]["image"]}',
                                          name: '${grid2[index]["name"]}',
                                          qu: '${grid2[index]["qu"]}',
                                        ),
                                    transition: Transition.rightToLeft);
                              },
                              child: Container(
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.all(10),
                                width: 160,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(18)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                            height: height * 70 / height,
                                            width: width * 70 / width,
                                            child: Image.asset(
                                                grid2[index]["image"])),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 10 / height,
                                    ),
                                    ConstText(
                                      text: "${grid2[index]["name"]}",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    ConstText(
                                      text: "${grid2[index]["qu"]}",
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    SizedBox(
                                      height: height * 10 / height,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ConstText(
                                          text: "\$4.99",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                        Icon(
                                          FluentIcons.add_square_16_filled,
                                          size: 34,
                                          color: Color(0xff53B175),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          })),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ConstText(
                            text: "Groceries",
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                          ConstText(
                            text: "See all",
                            fontSize: 16,
                            color: Color(0xff53b175),
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 10 / height,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      height: height * 110 / height,
                      width: width,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: gro.length,
                          itemBuilder: ((context, index) {
                            return Container(
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.all(10),
                              width: width * .65,
                              decoration: BoxDecoration(
                                  color: gro[index]["clr"],
                                  border: Border.all(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(18)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                          height: height * 70 / height,
                                          width: width * 70 / width,
                                          child: Image.asset(
                                              "${gro[index]["image"]}")),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      ConstText(
                                        text: "${gro[index]["name"]}",
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            );
                          })),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      height: height * 200 / height,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: meat.length,
                          itemBuilder: ((context, index) {
                            return InkWell(
                              onTap: () {
                                Get.to(
                                    () => ProductDetails(
                                          image: '${meat[index]["image"]}',
                                          name: '${meat[index]["name"]}',
                                          qu: '${meat[index]["qu"]}',
                                        ),
                                    transition: Transition.rightToLeft);
                              },
                              child: Container(
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.all(10),
                                width: 160,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(18)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                            height: height * 70 / height,
                                            width: width * 70 / width,
                                            child: Image.asset(
                                                meat[index]["image"])),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 10 / height,
                                    ),
                                    ConstText(
                                      text: "${meat[index]["name"]}",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    ConstText(
                                      text: "${meat[index]["qu"]}",
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    SizedBox(
                                      height: height * 10 / height,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ConstText(
                                          text: "\$4.99",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                        Icon(
                                          FluentIcons.add_square_16_filled,
                                          size: 34,
                                          color: Color(0xff53B175),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          })),
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
