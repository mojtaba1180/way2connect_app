import 'package:flutter/material.dart';
import 'package:is_first_run/is_first_run.dart';
import 'package:way2connect/src/constants/color.dart';
import 'package:way2connect/src/constants/sizes.dart';
import 'package:way2connect/src/layouts/drawer/drawer.dart';
import 'package:way2connect/src/pages/auth/login-form.dart';
import 'package:way2connect/src/pages/home/homePage.dart';
import 'package:way2connect/src/pages/notifications/notifications.dart';
import 'package:way2connect/src/pages/tickets/tickets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  String _title = "";
  final double _navigationSize = 30.0;
  final String _profileStatus = "online";

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Tickets(),
    Notifications(),
    LoginForm(),
  ];

  @override
  initState() {
    super.initState();
    _title = 'Inbox';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: tLightGray,
      drawer: AppDrawer(context, setState, _profileStatus),
      appBar: AppBar(
        toolbarHeight: 70,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            size: 40,
          ),
          color: Colors.black,
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
        titleSpacing: 0,
        elevation: 0,
        title: Text(
          _title,
          style: const TextStyle(color: tDark),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(right: 30),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                  onPressed: () async => {await IsFirstRun.reset()},
                  child: const Text(
                    "mywebsite.com",
                    style: TextStyle(
                        color: Colors.black, fontSize: tPrimaryFontSize),
                  ))
            ],
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        selectedItemColor: tPrimaryColor,
        backgroundColor: Colors.white,
        iconSize: _navigationSize,

        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              child: const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 255, 45, 45),
                child: Text(
                  "M",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ), //Text
              ),
            ),
            activeIcon: Container(
              child: const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 255, 125, 125),
                child: Text(
                  "M",
                  style: TextStyle(fontSize: 20, color: tPrimaryColor),
                ), //Text
              ),
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTabTapped,
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          {
            _title = 'Inbox';
          }
          break;
        case 1:
          {
            _title = 'Tickets';
          }
          break;
        case 2:
          {
            _title = 'Notifications';
          }
          break;
        case 3:
          {
            _title = 'Setting';
          }
          break;
      }
    });
  }
}
