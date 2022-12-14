// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../controllers/navigation_controller.dart';
//
// class NavBarDefault extends StatelessWidget {
//   const NavBarDefault({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(NavBarController());
//     return GetBuilder<NavBarController>(builder: (context) {
//       return BottomNavigationBar(
//         currentIndex: controller.tabIndex,
//         onTap: controller.changeTabIndex,
//         type: BottomNavigationBarType.fixed,
//         showUnselectedLabels: false,
//         showSelectedLabels: false,
//         unselectedItemColor: Colors.grey,
//         selectedItemColor: const Color(0xFF01579BB),
//         // unselectedLabelStyle: const TextStyle(color: Color(0xFF01579BB), fontSize: 14),
//         items: const [
//           BottomNavigationBarItem(
//               icon: Icon(Icons.home, size: 30), label: 'Home'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.search, size: 30), label: 'Search'),
//           BottomNavigationBarItem(BottomNavigationBarItem
//               icon: Icon(Icons.save_outlined, size: 30), label: 'My Stay'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.favorite_border_outlined, size: 30),
//               label: 'Favorite'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.person, size: 30), label: 'User'),
//         ],
//       );
//     });
//   }
// }
