import 'package:flutter/material.dart';
import 'package:hotel_app/models/appcolors.dart';
import 'package:get/get.dart';
import 'package:hotel_app/screens/register_screen.dart';
import '../controllers/authController.dart';
import '../widgets/button_widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final AuthController _authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(height: 30),
              //App Logo
              Image.asset("lib/images/logos/app_logo.png",
                  width: 250, height: 100),
              const SizedBox(height: 20),
              //Welcome Text
              const Text(
                "Welcome back!",
                style: TextStyle(
                  color: Color(0xFF01579B),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 40),

              //Username Textfield
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: borderColor, width: 2),
                ),
                child: TextField(
                  controller: _authController.email,
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: "Email",
                    prefixIcon: Icon(Icons.person,
                        color: Colors.lightBlue.shade900, size: 20),
                  ),
                ),
              ),

              const SizedBox(height: 20),
              //Password TextField
              Obx(
                () => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: borderColor, width: 2),
                  ),
                  child: TextField(
                    controller: _authController.password,
                    obscureText:
                        _authController.showPassword == false ? true : false,
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock_rounded,
                          color: Colors.lightBlue.shade900, size: 20),
                      suffixIcon: GestureDetector(
                          onTap: () {
                            _authController.show();
                          },
                          child: _authController.showPassword == false
                              ? const Icon(Icons.visibility_off,
                                  color: Colors.grey)
                              : Icon(Icons.visibility, color: mainColor)),
                    ),
                  ),
                ),
              ),

              //SizedBox
              const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  SizedBox(width: 20),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  _authController.signIn();
                },
                child: const Button(
                  text: 'Sign In',
                ),
              ),

              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(7),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 7,
                        spreadRadius: 3)
                  ],
                ),
                child: Image.asset('lib/images/logos/face-id.png'),
              ),

              const SizedBox(height: 25),
              // const Center(
              //   child: Text(
              //     '-OR-',
              //     style: TextStyle(
              //       fontWeight: FontWeight.bold,
              //       color: Colors.black,
              //     ),
              //   ),
              // ),

              const SizedBox(height: 30),
              // // ),
              //SizedBox
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? ",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      )),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => RegisterPage());
                    },
                    child: const Text('Sign up',
                        style: TextStyle(
                            color: Color(0xFF01579BB),
                            fontWeight: FontWeight.bold,
                            fontSize: 17)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
