import 'package:flutter/material.dart';
import 'package:testapp/screen/rides.dart';
import 'package:testapp/screen/deliveries.dart';
import 'package:testapp/screen/mydeals.dart';
import 'package:testapp/screen/payments.dart';
import 'package:testapp/screen/profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isIconPressed = false;

  int _pageindex = 0;
  // bool _isUserLogged;

  Future<bool> _onBackPressed() {
    return null;
  }

  PageController _pageController = PageController();

  List<Widget> _screens = [
    Rides(),
    Deliveries(),
    MyDeals(),
    Payments(),
    Profile(),
  ];

  void onPageChanged(int _index) {
    setState(() {
      _pageindex = _index;
    });
  }

  void onPageTapped(int _pagetap) {
    _pageController.jumpToPage(_pagetap);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        //resizeToAvoidBottomPadding: false,
        extendBodyBehindAppBar: true,
        extendBody: true,
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF0F4C81),
                    Colors.blueGrey[500],
                    Colors.blueGrey[300],
                    Colors.blueGrey[100],
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: PageView(
                controller: _pageController,
                children: _screens,
                onPageChanged: onPageChanged,
                physics: NeverScrollableScrollPhysics(),
              ),
            ),
          ],
        ),
        bottomNavigationBar: SingleChildScrollView(
          child: Container(
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedIconTheme: IconThemeData(
                size: 30,
                color: Colors.blue[600],
              ),
              iconSize: 26,
              unselectedItemColor: Colors.blueGrey[300],
              unselectedFontSize: 12,
              selectedFontSize: 15,
              currentIndex: _pageindex,
              onTap: onPageTapped,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.drive_eta),
                  label: "Rides",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.delivery_dining),
                  label: "Deliveries",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.details),
                  label: "MyDeals",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.payments_rounded),
                  label: "Payments",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Profile",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
