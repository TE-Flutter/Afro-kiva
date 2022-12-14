import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_app/controllers/navigation_controller.dart';
import 'package:hotel_app/screens/homepages/favorite_page.dart';

import '../screens/homepages/home.dart';
import '../screens/homepages/profile_page.dart';
import '../screens/homepages/saved_bookings.dart';
import '../screens/homepages/search_page.dart';


class NavBarDefault extends StatelessWidget {
  const NavBarDefault({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavBarController());
    return GetBuilder<NavBarController>(builder: (context) {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.tabIndex,
          onTap: controller.changeTabIndex,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Color(0xFF01579BB),
          // unselectedLabelStyle: const TextStyle(color: Color(0xFF01579BB), fontSize: 14),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 30), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.save_outlined, size: 30), label: 'My Stay'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined, size: 30),
                label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 30), label: 'User'),
          ],
        ),
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [
            HomePage(),
            SearchPage(),
            SavedForLater(),
            FavoritePage(),
            ProfilePage(),
          ],
        ),
      );
    });
  }
}
