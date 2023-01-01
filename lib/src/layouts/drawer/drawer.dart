import 'package:flutter/material.dart';
import 'package:way2connect/src/constants/app_icon_icons.dart';
import 'package:way2connect/src/constants/color.dart';
import 'package:way2connect/src/constants/text_strings.dart';
import 'package:way2connect/src/global-components/icon-with-text/icon-with-text.dart';

Widget AppDrawer(
    context, void Function(VoidCallback fn) setState, String profileStatus) {
  return Drawer(
    backgroundColor: Colors.white,
    child: Stack(
      alignment: Alignment.center,
      children: <Widget>[
        // background image and bottom contents
        Column(
          children: <Widget>[
            Container(
              height: 95.0,
              color: tPrimaryColor,
            ),
            Expanded(
              child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 40, bottom: 0),
                        height: 90,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10, left: 10),
                          child: Row(children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "John Doe",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "johndoe@gmail.com",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: tDarkGray),
                                ),
                              ],
                            ),
                            const Spacer(
                              flex: 2,
                            ),
                            SizedBox(
                              width: 40,
                              child: ElevatedButton(
                                onPressed: () => {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: tLightGray,
                                    shadowColor: Colors.transparent,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 0)),
                                child: const Icon(
                                  Icons.settings_outlined,
                                  color: tDarkGray,
                                ),
                              ),
                            )
                          ]),
                        ),
                      ),
                      Expanded(
                        child: ListView(
                          children: [
                            ListTile(
                              shape: const Border(
                                  bottom: BorderSide(
                                      color: Colors.amberAccent, width: 2)),
                              hoverColor: tLightGray,
                              selectedColor: tLightGray,
                              trailing: Text(profileStatus),
                              leading: const CircleAvatar(
                                backgroundColor: Colors.red,
                                child: Text(
                                  "M",
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.white),
                                ), //Text
                              ),
                              title: const Text(
                                "mywebSite.com",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
            Container(
                child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Powered By",
                    style: TextStyle(
                        color: tDarkGray,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  SizedBox(
                    width: 180,
                    child: IconWithText(
                      icon: AppIcon.logo,
                      text: tAppName,
                      iconColor: tPrimaryColor,
                      textColor: tDark,
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
        // Profile image
        const Positioned(
          top: 45.0, // (background container size) - (circle height / 2)
          child: SizedBox(
            height: 100,
            width: 80,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              child: Text(
                "M",
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ), //Text
            ),
          ),
        ),
        Positioned(
          top: 69.0,
          right: 10, // (background container size) - (circle height / 2)
          child: SizedBox(
              height: 20,
              width: 80,
              child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      DropdownButton<String>(
                        items: const [
                          DropdownMenuItem<String>(
                            value: "online",
                            child: Text("online"),
                          ),
                          DropdownMenuItem<String>(
                            value: "offline",
                            child: Text("offline"),
                          )
                        ],
                        onChanged: (value) {
                          setState(() => {});
                        },
                      ),
                    ],
                  ))),
        ),
      ],
    ),
  );
}
