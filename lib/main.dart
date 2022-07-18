import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ui_page/Accounts.dart';
import 'package:ui_page/Favourites.dart';
import 'package:ui_page/details.dart';
import 'package:ui_page/homePage.dart';
import 'package:ui_page/main.dart';

import 'Setting.dart';

void main() {
  runApp(BottomNavigation());
}

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  final List<Widget> tabs = [homePage(), Favourites(), Accounts(), Setting()];
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle:
                const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            unselectedLabelStyle: const TextStyle(
              fontSize: 14,
            ),
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.home,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: const Icon(
                    Icons.favorite,
                  ),
                  label: "Favourites"),
              const BottomNavigationBarItem(
                  icon: const Icon(
                    Icons.account_balance,
                  ),
                  label: "Account"),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.settings,
                ),
                label: "Settings",
              )
            ]),
        body: tabs[_currentIndex],
      ),
    );
  }
}
