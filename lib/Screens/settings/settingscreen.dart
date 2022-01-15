import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:instabook_source/Screens/profile/profilescreen.dart';
import 'package:instabook_source/constants/colors.dart';
import 'package:instabook_source/constants/strings.dart';

import 'package:instabook_source/provider/navigation_drawer_widget.dart';

bool status = false;

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool selectedRadio = false;
  final font12styleregular = TextStyle(fontSize: 12.sp, color: blackColor);
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: NavigationDrawerWidget(),
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      "images/savenoterec.svg",
                      // height: 100,
                      color: baseColor,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    scaffoldKey.currentState!.openDrawer();
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:
                                        SvgPicture.asset("images/drawer.svg"),
                                  ),
                                ),
                                Image.asset("images/smalllogo.png"),
                                InkWell(
                                  onTap: () {
                                    Get.to(() => const ProfileScreen());
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      "images/profile.jpeg",
                                      height: 34.h,
                                      width: 34.w,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top: 90,
                        left: 20,
                        right: 20,
                        child: SingleChildScrollView(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            height: 700,
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 40.h,
                                  ),
                                  Column(
                                    children: List.generate(
                                        7,
                                        (index) => Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Container(
                                                height: 42.h,
                                                width: 311.w,
                                                decoration: BoxDecoration(
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: baseColor
                                                            .withOpacity(0.2),
                                                        spreadRadius: 2,
                                                        blurRadius: 6,
                                                        offset: const Offset(0,
                                                            5), // changes position of shadow
                                                      ),
                                                    ],
                                                    color: whiteColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 10.w,
                                                        ),
                                                        SvgPicture.asset(
                                                            settingicons[index],
                                                            height: 24,
                                                            color: baseColor),
                                                        SizedBox(
                                                          width: 10.w,
                                                        ),
                                                        Text(
                                                          settingnames[index],
                                                          style: const TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        )
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Container(
                                                        child:
                                                            settingtrailwidget[
                                                                index],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )),
                                  ),
                                  SizedBox(
                                    height: 100.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        "images/logout.svg",
                                        color: baseColor,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      const Text(
                                        "Log out",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: baseColor,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
