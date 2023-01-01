import 'package:flutter/material.dart';
import 'package:way2connect/src/constants/color.dart';

class NotficationTabBar extends StatefulWidget {
  @override
  _NotficationTabBarState createState() => _NotficationTabBarState();
}

class _NotficationTabBarState extends State<NotficationTabBar>
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
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            // give the tab bar a height [can change hheight to preferred height]
            Container(
                height: 40,
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
                children: const [
                  // first tab bar view widget
                  Center(
                    child: Text(
                      'All',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  // second tab bar view widget
                  Center(
                    child: Text(
                      'Main',
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
