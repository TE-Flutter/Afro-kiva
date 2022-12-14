import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_app/controllers/authController.dart';
import '../models/appcolors.dart';
import '../widgets/button_widget.dart';
import 'login_screen.dart';

class RegisterPage extends StatelessWidget {
   RegisterPage({Key? key}) : super(key: key);

  final AuthController _authController  = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              //App Logo
              Image.asset("lib/images/logos/app_logo.png",
                  width: 250, height: 100),
              const SizedBox(height: 60),

              //Username Textfield
              // Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     border: Border.all(color: borderColor, width: 2),
              //   ),
              //   child: TextField(
              //     decoration: InputDecoration(
              //       focusedBorder: InputBorder.none,
              //       enabledBorder: InputBorder.none,
              //       disabledBorder: InputBorder.none,
              //       hintText: "Full name",
              //       prefixIcon: Icon(Icons.person,
              //           color: Colors.lightBlue.shade900, size: 22),
              //     ),
              //   ),
              // ),
              //
              // const SizedBox(height: 20),

              //Email Textfield
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
                    prefixIcon: Icon(Icons.email_outlined,
                        color: Colors.lightBlue.shade900, size: 22),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              //Password TextField
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: borderColor, width: 2),
                ),
                child: TextField(
                  obscureText: true,
                  controller: _authController.password,
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock_rounded,
                        color: Colors.lightBlue.shade900, size: 22),
                    suffixIcon: const Icon(Icons.visibility_off,
                        color: Color(0xFF01579B)),
                  ),
                ),
              ),

              //SizedBox
              const SizedBox(height: 80),

              GestureDetector(
                onTap: (){
                  _authController.signUp();
                },
                child: const Button(
                  text: 'Create account',
                ),
              ),

              const Spacer(),
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
                      _authController.disposeField();
                      Get.to(() =>  LoginPage());
                    },
                    child: const Text('Log in',
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
