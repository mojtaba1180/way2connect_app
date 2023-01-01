// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:way2connect/src/constants/color.dart';

class TicketListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
        child: Column(children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 5),
                child: CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Text(
                    "M",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ), //Text
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 6),
                width: 9,
                height: 9,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(14)),
              ),
              const Text("John Doe"),
              const Spacer(
                flex: 2,
              ),
              const Text("John Doe"),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 4)),
          Row(
            children: [
              const Text("John Doe"),
              const Spacer(
                flex: 2,
              ),
              Container(
                margin: const EdgeInsets.only(right: 6),
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(4)),
                padding: const EdgeInsets.only(bottom: 2),
                child: const Center(
                    child: Text(
                  "1",
                  style: TextStyle(color: Colors.white),
                )),
              ),
              const Text("now"),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 8)),
          const Divider(
            height: 1,
            color: tLightGray,
          )
        ]));
  }
}
