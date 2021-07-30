import 'package:account_and_activity/screens/account_screen.dart';
import 'package:account_and_activity/screens/activity_screen.dart';
import 'package:account_and_activity/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final kpurpleColor = Color(0xff4027b9);
  final kgreyColor = Color(0xffbfbfbf);

  final pages = [
    HomeScreen(),
    ActivityScreen(),
    AccountScreen(),
    AccountScreen()
  ];

  int _selectedNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_selectedNavIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedNavIndex = value;
          });
        },
        currentIndex: _selectedNavIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kpurpleColor,
        unselectedItemColor: kgreyColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(color: Colors.red),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/home.png",
              width: 24.w,
              height: 24.h,
            ),
            activeIcon: Image.asset("assets/images/home.png",
                width: 24.w, height: 24.h, color: kpurpleColor),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/credit_card.svg",
                width: 24.w,
                height: 24.h,
                color: kgreyColor,
              ),
              activeIcon: SvgPicture.asset("assets/images/credit_card.svg",
                  width: 24.w, height: 24.h, color: kpurpleColor),
              label: "Activity"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/account.svg",
                width: 24.w,
                height: 24.h,
                color: kgreyColor,
              ),
              activeIcon: SvgPicture.asset("assets/images/account.svg",
                  width: 24.w, height: 24.h, color: kpurpleColor),
              label: "User"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/add.svg",
                width: 50.w,
                height: 50.h,
              ),
              label: "Plus")
        ],
      ),
    );
  }
}
