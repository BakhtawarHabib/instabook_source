import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:instabook_source/Screens/Home/homescreen.dart';
import 'package:instabook_source/constants/colors.dart';
import 'package:instabook_source/widgets/backbutton.dart';
import 'package:instabook_source/widgets/general_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = false;
  @override
  bool _selectedRadio = true;
// ignore: must_call_super
  void initState() {
    _passwordVisible = false;
  }

  final formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      "images/loginrec.svg",
                      width: MediaQuery.of(context).size.width,
                    ),
                    const CustomBackButton(),
                    Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40.h,
                          ),
                          Image.asset(
                            "images/logo.png",
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                    color: baseColor,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20.h,
              ),
              Image.asset(
                "images/profile.jpeg",
                height: 90.h,
                width: 90.w,
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 56.h,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: TextFormField(
                    obscureText: !_passwordVisible,
                    textAlignVertical: TextAlignVertical.bottom,
                    cursorColor: const Color(0xFF075E54),
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                            child: !_passwordVisible
                                ? SvgPicture.asset("images/eye.svg")
                                : SvgPicture.asset("images/closeeye.svg")),
                      ),
                      contentPadding:
                          const EdgeInsets.only(bottom: 23.0, left: 10),
                      border: nonfocusborder,
                      focusedBorder: focusborder,
                      hintText: 'Password',
                      label: Text(
                        "Password",
                        style: TextStyle(
                          color: baseColor,
                          fontSize: 16.sp,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: greyColor,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: baseColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      onChanged: (value) {
                        setState(() => _selectedRadio = !_selectedRadio);
                      },
                      value: _selectedRadio,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: "Remember my password",
                          style: TextStyle(fontSize: 16.sp, color: blackColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              GeneralButton(
                onpress: () {
                  Get.offAll(() => HomeScreen());
                },
                centerText: "Sign In",
              ),
              SizedBox(
                height: 30.h,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: "Trying to log in with another account? ",
                      style: TextStyle(fontSize: 14.sp, color: blackColor),
                      children: [
                        TextSpan(
                          text: "Click here",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: baseColor,
                          ),
                        )
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
