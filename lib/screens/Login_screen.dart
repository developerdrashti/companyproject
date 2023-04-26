import 'dart:async';

import 'package:dropikmed001/Model/login.dart';
import 'package:dropikmed001/Services/Apiclass.dart';
import 'package:dropikmed001/Services/sessionmanagement.dart';
import 'package:dropikmed001/screens/Navigation_screen.dart';
import 'package:dropikmed001/screens/Password_confirm_screen.dart';
import 'package:dropikmed001/utils/AppColors.dart';
import 'package:dropikmed001/utils/AppImages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Model/login_model.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({Key? key}) : super(key: key);

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  TextEditingController _phonenumberController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
              child: Stack(
            children: [
              Container(
                child: Image.asset(Appimages.background),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Image.asset(Appimages.bus),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 390, left: 0),
                  child: Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          fontSize: 30,
                          color: Appcolors.black,
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.w600),
                    ),
                  )),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.05)),
                margin: EdgeInsets.only(top: 470, right: 25, left: 25),
                child: TextField(
                  controller: _phonenumberController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 10),
                    hintText: " Enter your mobile number",
                  ),
                  keyboardType: TextInputType.phone,
                  autofocus: false,
                ),
              ),
              SizedBox(
                height: 39,
              ),
              Container(
                width: double.maxFinite,
                // alignment: Alignment.center,
                margin: EdgeInsets.only(top: 590, right: 40, left: 40),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(00, 50),
                      primary: Color(0xFFec9c24),
                    ),
                    onPressed: () {
                      checklogin(_phonenumberController.text);

                      // _auth.verifyPhoneNumber(
                      //   timeout: Duration(seconds: 60),
                      //   phoneNumber:
                      //       "+91${_phonenumberController.text.toString()}",
                      //   verificationCompleted: (phoneAuthCredential) {},
                      //   verificationFailed: (error) {
                      //     print("Print Verification Failed notes:->$error");
                      //   },
                      //   codeSent: (verificationId, forceResendingToken) {
                      //     Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //           builder: (context) => password_confirm_screen(
                      //             VerificationToken: verificationId,
                      //           ),
                      //         ));
                      //   },
                      //   codeAutoRetrievalTimeout: (verificationId) {
                      //     print("Verification >>>${verificationId}");
                      //   },
                      // );
                    },
                    child: Text(
                      "login",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    )),
              )
            ],
          )),
        ],
      ),
    );
  }

  void checklogin(String username) async {
    HttpService httpService = HttpService();
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    LoginModel login = await httpService.checkLogin(username);
    if (login.message == "Ok") {
      SessionManagement sessionManagement = SessionManagement();
      await sharedPreferences.setBool("Login", true);
      bool setlogin = await sharedPreferences.setBool("Login", true);
      sessionManagement.CreateSession(login);
      Fluttertoast.showToast(
          msg: login.message!, toastLength: Toast.LENGTH_SHORT);
      if (setlogin == true) {
        Timer(
            Duration(seconds: 2),
            () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => password_confirm_screen())));
      } else {
        Timer(
            Duration(seconds: 2),
            () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => NavigationScreen())));
      }
    } else {
      print("not success");
    }
  }
}
