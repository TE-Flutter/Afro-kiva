import 'package:get/get.dart';
import 'package:hotel_app/screens/login_screen.dart';

class SplashController extends GetxController{
  static SplashController get find => Get.find();
  RxBool animate = false.obs;

  Future<void> startAnimation() async{
    await Future.delayed(Duration(milliseconds: 1200));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 5000));
    Get.to(() => LoginPage());
  }
}