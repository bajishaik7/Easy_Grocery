import 'package:easy_grocery/consts/const_test.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  List grid = [
    {
      "name": "Beverages",
      "image": "assets/images/beverages.png",
      "color": Color(0xffB7DFF5).withOpacity(.2)
    },
    {
      "name": "Fresh Fruits\nVegetables",
      "image": "assets/images/fresh..png",
      "color": Color(0xff53B175).withOpacity(.2)
    },
    {
      "name": "Cooking oil \n  & Ghee",
      "image": "assets/images/oil.png",
      "color": Color(0xffF8A44C).withOpacity(.2)
    },
    {
      "name": "Meat & Fish",
      "image": "assets/images/fish.png",
      "color": Color(0xffF7A593).withOpacity(.2)
    },
    {
      "name": "Bakery & Snacks",
      "image": "assets/images/bakery.png",
      "color": Color(0xffD3B0E0).withOpacity(.2)
    },
    {
      "name": "Dairy & Eggs",
      "image": "assets/images/eggs.png",
      "color": Color(0xffFDE598).withOpacity(.2)
    },
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: ConstText(
          text: "Find Product",
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: Container(
        height: height,
        width: width,
        child: Column(
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
                width: width,
                child: GridView.builder(
                    itemCount: grid.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        childAspectRatio: 1),
                    itemBuilder: ((context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: grid[index]["color"],
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                              "${grid[index]["image"]}",
                              height: 70,
                              width: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ConstText(
                              text: "${grid[index]["name"]}",
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      );
                    })),
              ),
            )
          ],
        ),
      ),
    );
  }
}
