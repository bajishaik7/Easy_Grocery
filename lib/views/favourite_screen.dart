import 'package:easy_grocery/consts/const_button.dart';
import 'package:easy_grocery/consts/const_test.dart';
import 'package:easy_grocery/views/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'product_details.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List carditems = [
    {
      "name": "Sprite Can",
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
      "image": "assets/images/sprite.png",
      "qu": "350 ml, price"
    },
    {
      "name": "Diet Coke Can",
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
      "image": "assets/images/coke.png",
      "qu": "350 ml, price"
    },
    {
      "name": "Apple & Grape Juice",
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
      "image": "assets/images/red.png",
      "qu": "1L, price"
    },
    {
      "name": "Coca cola Can",
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
      "image": "assets/images/cola.png",
      "qu": "350ml, price"
    },
    {
      "name": "Pepsi Can",
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
      "image": "assets/images/pepsi.png",
      "qu": "330ml, price"
    },
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: ConstText(
          text: "Favorite",
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        height: height,
        width: width,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: carditems.length,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(
                            () => ProductDetails(
                                  image: '${carditems[index]["image"]}',
                                  name: '${carditems[index]["name"]}',
                                  qu: '${carditems[index]["qu"]}',
                                ),
                            transition: Transition.rightToLeft);
                      },
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              width: width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Image.asset(
                                        "${carditems[index]["image"]}",
                                        height: height * 80 / height,
                                        width: width * 80 / width,
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                      flex: 3,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ConstText(
                                            text: "${carditems[index]["name"]}",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          ConstText(
                                            text: "${carditems[index]["qu"]}",
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ],
                                      )),
                                  Container(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ConstText(
                                          text: "\$4.99",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.black12,
                            )
                          ],
                        ),
                      ),
                    );
                  })),
            ),
            ConstButton(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ConstText(
                      text: "Add All to Cart",
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                onPressed: () {
                  Get.to(() => CartScreen(),
                      transition: Transition.rightToLeft);
                }),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
