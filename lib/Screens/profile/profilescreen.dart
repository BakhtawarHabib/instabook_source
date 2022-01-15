import 'dart:ui';

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
import 'package:flutter_switch/flutter_switch.dart';
import 'package:instabook_source/constants/colors.dart';
import 'package:instabook_source/constants/strings.dart';
import 'package:instabook_source/widgets/general_button.dart';
import 'package:instabook_source/widgets/generaltxtfield.dart';
import 'package:instabook_source/widgets/notebookwidget.dart';

bool status = false;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool selectedRadio = false;
  final font12styleregular = TextStyle(fontSize: 12.sp, color: blackColor);
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "images/profile.jpeg",
                                    height: 34.h,
                                    width: 34.w,
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
                            height: MediaQuery.of(context).size.height,
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SvgPicture.asset(
                                          "images/edit.svg",
                                          height: 36.h,
                                          width: 36.w,
                                        )
                                      ],
                                    ),
                                  ),
                                  Center(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "images/profile.jpeg",
                                          height: 85.h,
                                          width: 85.w,
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        const Text(
                                          "Hans F . Ritter",
                                          style: TextStyle(
                                              color: Color(0xff56BCCE),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      ProfileGeneralTextField(
                                        hinttext: 'hansritter@example.com',
                                        label: 'Email',
                                        labelimg: 'images/email.svg',
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 8),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  "images/lock.svg",
                                                  width: 20.w,
                                                  height: 20.h,
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Text(
                                                  "Password",
                                                  style: TextStyle(
                                                    color: blackColor,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16.sp,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Container(
                                              height: 45.h,
                                              decoration: BoxDecoration(
                                                  color: const Color(0xff4DB8CA)
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              padding: const EdgeInsets.only(
                                                  left: 10.0, right: 10.0),
                                              child: TextFormField(
                                                obscureText: !_passwordVisible,
                                                textAlignVertical:
                                                    TextAlignVertical.bottom,
                                                cursorColor:
                                                    const Color(0xFF075E54),
                                                decoration: InputDecoration(
                                                  fillColor:
                                                      const Color(0xff4DB8CA)
                                                          .withOpacity(0.2),
                                                  suffixIcon: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            14.0),
                                                    child: InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            _passwordVisible =
                                                                !_passwordVisible;
                                                          });
                                                        },
                                                        child: !_passwordVisible
                                                            ? SvgPicture.asset(
                                                                "images/eye.svg",
                                                                color: const Color(
                                                                    0xff59BDCF))
                                                            : SvgPicture.asset(
                                                                "images/closeeye.svg",
                                                                color: const Color(
                                                                    0xff59BDCF),
                                                              )),
                                                  ),
                                                  contentPadding:
                                                      const EdgeInsets.only(
                                                          bottom: 12.0,
                                                          left: 10),
                                                  border: InputBorder.none,
                                                  hintText: '*********',
                                                  hintStyle: TextStyle(
                                                    color:
                                                        const Color(0xff59BDCF),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16.sp,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      ProfileGeneralTextField(
                                        hinttext: 'JB International School',
                                        label: 'School',
                                        labelimg: 'images/cap.svg',
                                      ),
                                      ProfileGeneralTextField(
                                        hinttext: 'Finance',
                                        label: 'Career',
                                        labelimg: 'images/briefcase.svg',
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 8),
                                    child: Text(
                                      "My Connections",
                                      style: TextStyle(
                                        color: blackColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                        4,
                                        (index) => Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                alignment: Alignment.center,
                                                width: 65.w,
                                                height: 65.h,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color(
                                                        0xffC1E2E9)),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      sharetoclients[index],
                                                      height: 35.h,
                                                      width: 35.w,
                                                    ),
                                                    Text(
                                                      sharetoclientsnames[
                                                          index],
                                                      style: const TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 8),
                                    child: Text(
                                      "My Followed Topics",
                                      style: TextStyle(
                                        color: blackColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                        4,
                                        (index) => Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8),
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: 25.h,
                                                width: 66.w,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: const Color(
                                                        0xffC1E2E9)),
                                                child: Text(
                                                  followedtopics[index],
                                                  style: const TextStyle(
                                                      fontSize: 12,
                                                      color: blackColor),
                                                ),
                                              ),
                                            )),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 8),
                                    child: Text(
                                      "My Saved Notes",
                                      style: TextStyle(
                                        color: blackColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(10),
                                    alignment: Alignment.center,
                                    height: 250.h,
                                    child: ListView.builder(
                                      itemCount: bookimages.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return InkWell(
                                          onTap: () {},
                                          child: Column(
                                            children: [
                                              Container(
                                                  width: 104.w,
                                                  height: 130.h,
                                                  child: Image.asset(
                                                      recentnotesimg[index])),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Text(
                                                mysavednotes[index],
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w600,
                                                    color: blackColor),
                                              ),
                                              SizedBox(
                                                height: 3.h,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SvgPicture.asset(
                                                    "images/clock.svg",
                                                    height: 14.h,
                                                    color:
                                                        const Color(0xFFE6107B),
                                                  ),
                                                  SizedBox(width: 5.w),
                                                  Text(
                                                    "Sept 1, 2021",
                                                    style: TextStyle(
                                                      fontSize: 12.sp,
                                                      color: const Color(
                                                          0xffDA67A0),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 60,
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
