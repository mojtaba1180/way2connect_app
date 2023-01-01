import 'package:flutter/material.dart';
import 'package:way2connect/src/constants/color.dart';
import 'package:way2connect/src/constants/sizes.dart';

Widget PendingMessage(context) {
  return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: tPrimaryColor,
      height: 180,
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Row(
                children: const [
                  Text(
                    "Pendding Message",
                    style: TextStyle(
                      fontSize: tPrimaryFontSize,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 120,
            child: ListView(
              children: [
                _ListCard(),
                _ListCard(),
                _ListCard(),
                _ListCard(),
                _ListCard(),
                _ListCard(),
              ],
            ),
          )
        ],
      ));
}

Widget _ListCard() {
  return Card(
    elevation: 15,
    color: Colors.white10,
    shadowColor: Colors.black12,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Row(
        children: const [
          Text(
            "85.214.132.117",
            style: TextStyle(
              fontSize: tPrimaryFontSize,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Spacer(
            flex: 2,
          ),
          Text(
            "W18426448368484",
            style: TextStyle(
              fontSize: tPrimaryFontSize,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          )
        ],
      ),
    ),
  );
}
// ignore: non_constant_identifier_names
