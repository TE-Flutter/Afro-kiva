import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_app/controllers/authController.dart';
import 'package:hotel_app/controllers/firebase_controller.dart';
import 'package:hotel_app/models/app_routes.dart';
import 'package:hotel_app/pages/navbar.dart';
import 'package:hotel_app/screens/login_screen.dart';
import 'package:hotel_app/screens/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialization.then((value) {
    Get.put(AuthController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Afro-Kiva Hotel',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      // home: SplashScreen(),
      //NavBarDefault(),
      //initialRoute: AppPages.nav,
      getPages: AppPages.routes,
    );
  }
}
