import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_app/controllers/splashscreenController.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    splashController.startAnimation();
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        height: height,
        width: width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/images/splash.jpg"), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Obx(
              () => AnimatedPositioned(
                  top: splashController.animate.value ? 100 : 10,
                  duration: const Duration(milliseconds: 1800),
                  child: const Text(
                    'Find your \nPerfect place \nto Stay',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  )),
            ),
            //SizedBox(height: 20),
            Obx(
              () => AnimatedPositioned(
                top: 260,
                left: splashController.animate.value ? 0 : 60,
                //bottom: ,
                duration: const Duration(milliseconds: 1800),
                child: Text(
                  softWrap: true,
                  'Find your hotel easily and travel \nanywhere you want with us',
                  style: TextStyle(
                      color: Colors.grey.shade50,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                bottom: splashController.animate.value ? 120 : -10,
                left: 125,
                duration: const Duration(milliseconds: 1800),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Image.asset(
                      'lib/images/logos/Logo.png',
                      width: 100,
                      height: 100,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
