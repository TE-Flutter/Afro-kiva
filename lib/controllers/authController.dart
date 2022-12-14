import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hotel_app/models/app_routes.dart';
import 'package:hotel_app/pages/navbar.dart';
import 'package:hotel_app/screens/login_screen.dart';

import 'firebase_controller.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  RxBool isLoading = false.obs;
  late Rx<User?> firebaseUser;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void onReady() {
    super.onReady();
    firebaseUser = Rx<User?>(auth.currentUser);
    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    if (user == null) {
      Get.to(() => LoginPage());
    } else {
      Get.to(() => const NavBarDefault());
    }
  }

  void signUp() async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email.text.trim(), password: password.text.trim());
      disposeField();
    } catch (e) {
      Get.snackbar("Registration Failed", e.toString());
    }
  }

  void signIn() async {
    try {
      await auth.signInWithEmailAndPassword(
          email: email.text.trim(), password: password.text.trim());
      disposeField();
    } catch (e) {
      Get.snackbar("Login Failed", e.toString());
    }
  }

  void signOut() async => await auth.signOut();

  Rx<bool> showPassword = false.obs;

  void show() {
    showPassword.value = true;
  }

  void disposeField() {
    email.clear();
    password.clear();
  }
}
