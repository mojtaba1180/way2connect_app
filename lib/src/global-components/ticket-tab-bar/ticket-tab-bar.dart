import 'package:flutter/material.dart';
import 'package:way2connect/src/constants/color.dart';
import 'package:way2connect/src/global-components/ticket-list-item/ticket-list-item.dart';

class StackOver extends StatefulWidget {
  @override
  _StackOverState createState() => _StackOverState();
}

class _StackOverState extends State<StackOver>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            // give the tab bar a height [can change hheight to preferred height]
            Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: tLightGray,
                  borderRadius: BorderRadius.circular(
                    12.0,
                  ),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: TabBar(
                      controller: _tabController,
                      // give the indicator a decoration (color and border radius)
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        color: Colors.white,
                      ),
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        // first tab [you can add an icon using the icon property]
                        Tab(
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(
                                      12.0,
                                    ),
                                  ),
                                  child: const SizedBox(height: 1),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text("All"),
                                ),
                              ]),
                        ),

                        // second tab [you can add an icon using the icon property]
                        const Tab(
                          text: 'Mine',
                        ),
                      ],
                    ))),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // first tab bar view widget
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ListView(
                      children: [
                        TicketListItem(),
                        TicketListItem(),
                        TicketListItem(),
                        TicketListItem(),
                        TicketListItem(),
                        TicketListItem(),
                        TicketListItem(),
                        TicketListItem(),
                        TicketListItem(),
                        TicketListItem(),
                        TicketListItem(),
                        TicketListItem(),
                        TicketListItem(),
                        TicketListItem(),
                        TicketListItem(),
                      ],
                    ),
                  ),
                  // Center(
                  //   child: Text(
                  //     'All',
                  //     style: TextStyle(
                  //       fontSize: 25,
                  //       fontWeight: FontWeight.w600,
                  //     ),
                  //   ),
                  // ),

                  // second tab bar view widget
                  const Center(
                    child: Text(
                      'Mine',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
