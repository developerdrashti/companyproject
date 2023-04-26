import 'package:dropikmed001/screens/Dashboard_screen.dart';
import 'package:dropikmed001/screens/Navigation_screen.dart';
import 'package:dropikmed001/utils/AppColors.dart';
import 'package:dropikmed001/utils/AppImages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class password_confirm_screen extends StatefulWidget {
  String? VerificationToken;
  password_confirm_screen({super.key, this.VerificationToken});

  @override
  State<password_confirm_screen> createState() =>
      _password_confirm_screenState();
}

class _password_confirm_screenState extends State<password_confirm_screen> {
  TextEditingController _otpController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  String? smscode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    margin: EdgeInsets.only(top: 370, left: 0),
                    child: Center(
                      child: Text(
                        "OTP Verify",
                        style: TextStyle(
                            fontSize: 30,
                            color: Appcolors.black,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w600),
                      ),
                    )),
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 430),
                    child: Text(
                      "please Enter The Verification Code \n               Send Your Mobile",
                      style: TextStyle(
                          color: Appcolors.darkblack,
                          fontSize: 16,
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.w600),
                    )),
                Container(
                  margin: EdgeInsets.only(top: 500),
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: PinCodeTextField(
                    length: 6,
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeColor: Appcolors.primary,
                        inactiveColor: Appcolors.primary,
                        selectedColor: Appcolors.primary),

                    obscureText: false,
                    controller: _otpController,

                    animationType: AnimationType.slide,
                    animationDuration: Duration(milliseconds: 400),

                    // Pass it here
                    onChanged: (value) {
                      setState(() {
                        smscode = value;
                      });
                    },
                    appContext: context,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 580, right: 40, left: 40),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(00, 50),
                        primary: Color(0xFFec9c24),
                      ),
                      onPressed: () async {
                        try {
                          PhoneAuthCredential phoneAuthCredential =
                              PhoneAuthProvider.credential(
                                  verificationId: widget.VerificationToken!,
                                  smsCode: smscode!);

                          await _auth
                              .signInWithCredential(phoneAuthCredential)
                              .then((value) {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dashboard_screen()),
                                (route) => false);
                          });
                        } catch (e) {
                          print(">>>Try OTPs<<<");
                        }
                        print("${_otpController.text}");

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NavigationScreen()));
                      },
                      child: Center(
                        child: Text(
                          "Verify",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      )),
                ),
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 700),
                    child: RichText(
                      text: TextSpan(
                          text: 'Dont Receive the OTP?',
                          style: TextStyle(
                            color: Appcolors.black,
                          ),
                          children: const <TextSpan>[
                            TextSpan(
                              text: '    Resend The OTP',
                              style: TextStyle(color: Colors.blue),
                            )
                          ]),
                    )),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
