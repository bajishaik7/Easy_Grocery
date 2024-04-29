import 'package:easy_grocery/consts/const_button.dart';
import 'package:easy_grocery/consts/const_test.dart';
import 'package:easy_grocery/views/order_placed.dart';
import 'package:easy_grocery/views/product_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List carditems = [
    {
      "name": "Bell Pepper Red",
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
      "image": "assets/images/pep.png",
      "qu": "6 Pcs, price"
    },
    {
      "name": "Beef Bone",
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
      "image": "assets/images/redmeat.png",
      "qu": "1kg, price"
    },
    {
      "name": "Ginger",
      "desc":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
      "image": "assets/images/ginger.png",
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
          text: "My Cart",
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
                                      flex: 2,
                                      child: Image.asset(
                                          "${carditems[index]["image"]}")),
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
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Image.asset("assets/images/plus.png")
                                        ],
                                      )),
                                  Expanded(
                                      child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.close,
                                          color: Colors.black12,
                                        ),
                                        SizedBox(
                                          height: 45,
                                        ),
                                        ConstText(
                                          text: "\$4.99",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ],
                                    ),
                                  ))
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
                      text: "Go to Checkout",
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: Color(0xff489E67),
                            borderRadius: BorderRadius.circular(8)),
                        child: ConstText(
                          text: "\$12.96",
                          color: Colors.white,
                        )),
                  ],
                ),
                onPressed: () {
                  Get.bottomSheet(
                      Container(
                        padding: EdgeInsets.all(15),
                        height: 490,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24))),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ConstText(
                                  text: "Checkout",
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                                IconButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    icon: Icon(Icons.close))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Divider(
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ConstText(
                                  text: "Delivery",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff7c7c7c),
                                ),
                                Row(
                                  children: [
                                    ConstText(
                                      text: "Select Method",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.arrow_forward_ios_rounded),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ConstText(
                                  text: "Payment",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff7c7c7c),
                                ),
                                Row(
                                  children: [
                                    Image.asset("assets/images/card.png"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.arrow_forward_ios_rounded),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ConstText(
                                  text: "Promo Code",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff7c7c7c),
                                ),
                                Row(
                                  children: [
                                    ConstText(
                                      text: "Pick Discount",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.arrow_forward_ios_rounded),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ConstText(
                                  text: "Total Cost",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff7c7c7c),
                                ),
                                Row(
                                  children: [
                                    ConstText(
                                      text: "\$13.96",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.arrow_forward_ios_rounded),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                ConstText(
                                  text: "By Placing an order you agree to our",
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xff7c7c7c),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                ConstText(
                                  text: "Terms",
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                ConstText(
                                  text: " and ",
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xff7c7c7c),
                                ),
                                ConstText(
                                  text: "Conditions",
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            ConstButton(
                                child: ConstText(
                                  text: "Go to Checkout",
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                                onPressed: () {
                                  Get.off(() => OrderPlaced(),
                                      transition: Transition.rightToLeft);
                                })
                          ],
                        ),
                      ),
                      isScrollControlled: true);
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
