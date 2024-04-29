import 'package:easy_grocery/consts/const_test.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class AccounScreen extends StatefulWidget {
  const AccounScreen({super.key});

  @override
  State<AccounScreen> createState() => _AccounScreenState();
}

class _AccounScreenState extends State<AccounScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 1,
          shadowColor: const Color(0xffECECEC),
          title: const Text(
            "Profile",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: width,
                padding: EdgeInsets.only(
                    left: width * 16 / width,
                    right: width * 16 / width,
                    top: height * 8 / height,
                    bottom: height * 8 / height),
                height: height * 88 / height,
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 36,
                            backgroundImage: NetworkImage(
                                "https://t3.ftcdn.net/jpg/03/53/11/00/360_F_353110097_nbpmfn9iHlxef4EDIhXB1tdTD0lcWhG9.jpg")

                            // AssetImage("assets/images/tenramesh.jpeg"),
                            ),
                        SizedBox(
                          width: width * 19 / width,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Baji Shaik",
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff01011E),
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "+918500950817",
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff01011E),
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.transparent,
                            border: Border.all(color: const Color(0xffCACACA))),
                        height: height * 24 / height,
                        width: width * 57 / width,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.edit,
                              color: Color(0xff929292),
                              size: 15,
                            ),
                            Text(
                              "Edit",
                              style: TextStyle(
                                  color: Color(0xff929292),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              const Divider(
                height: 0,
                thickness: 1,
              ),
              ListTile(
                leading: Icon(
                  FluentIcons.shopping_bag_24_regular,
                  size: 26,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: ConstText(
                    text: "Orders",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
              Divider(
                height: 0,
                thickness: 1,
              ),
              ListTile(
                leading: Icon(
                  FluentIcons.card_ui_24_regular,
                  size: 26,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: ConstText(
                    text: "My details",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
              Divider(
                height: 0,
                thickness: 1,
              ),
              ListTile(
                leading: Icon(
                  FluentIcons.location_12_regular,
                  size: 26,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: ConstText(
                    text: "Delivery Location",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
              Divider(
                height: 0,
                thickness: 1,
              ),
              ListTile(
                leading: Icon(
                  FluentIcons.payment_16_regular,
                  size: 26,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: ConstText(
                    text: "Payment Methods",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
              Divider(
                height: 0,
                thickness: 1,
              ),
              ListTile(
                leading: Icon(
                  FluentIcons.shopping_bag_percent_20_regular,
                  size: 26,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: ConstText(
                    text: "Promo Card",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
              Divider(
                height: 0,
                thickness: 1,
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications_none,
                  size: 26,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: ConstText(
                    text: "Notifications",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
              Divider(
                height: 0,
                thickness: 1,
              ),
              ListTile(
                leading: Icon(
                  Icons.help_center_outlined,
                  size: 26,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: ConstText(
                    text: "Help",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
              Divider(
                height: 0,
                thickness: 1,
              ),
              ListTile(
                leading: Icon(
                  FluentIcons.info_12_regular,
                  size: 26,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: ConstText(
                    text: "About",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
              Divider(
                height: 0,
                thickness: 1,
              ),
            ],
          ),
        ));
  }
}
