import 'package:easy_grocery/consts/const_test.dart';
import 'package:easy_grocery/views/account_screen.dart';
import 'package:easy_grocery/views/cart_screen.dart';
import 'package:easy_grocery/views/explore_screen.dart';
import 'package:easy_grocery/views/favourite_screen.dart';
import 'package:easy_grocery/views/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int selectedIndex = 0;
  List pages = [
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    FavouriteScreen(),
    AccounScreen()
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return WillPopScope(
      onWillPop: () async {
        return (await showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: ConstText(text: "Are you sure ?"),
                  content: ConstText(text: "Do you want to exit"),
                  actions: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: ConstText(
                          text: "Yes",
                          color: Colors.red,
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: ConstText(
                          text: "No",
                          color: Colors.green,
                        ))
                  ],
                )));
      },
      child: Scaffold(
        backgroundColor: Color(0xffF2F3F2),
        body: pages[selectedIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18)),
          child: Container(
            margin: EdgeInsets.all(1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (v) {
                  print(v);
                  setState(() {
                    selectedIndex = v;
                  });
                },
                type: BottomNavigationBarType.fixed,
                // selectedIconTheme: IconThemeData(color: Colors.yellowAccent),
                selectedItemColor: Color(0xff53B175),
                unselectedItemColor: Colors.black,
                elevation: 0,
                backgroundColor: Colors.white,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(FluentIcons.shopping_bag_24_regular),
                      label: "Shop"),
                  BottomNavigationBarItem(
                      icon:
                          Icon(FluentIcons.line_horizontal_4_search_16_regular),
                      label: "Explore"),
                  BottomNavigationBarItem(
                      icon: Icon(FluentIcons.cart_24_regular), label: "Cart"),
                  BottomNavigationBarItem(
                      icon: Icon(FluentIcons.heart_12_regular),
                      label: "Favourite"),
                  BottomNavigationBarItem(
                      icon: Icon(FluentIcons.person_32_regular),
                      label: "Account")
                ]),
          ),
        ),
      ),
    );
  }
}
