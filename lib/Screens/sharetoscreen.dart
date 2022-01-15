import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:instabook_source/Screens/profile/profilescreen.dart';
import 'package:instabook_source/constants/colors.dart';
import 'package:instabook_source/constants/strings.dart';
import 'package:instabook_source/provider/navigation_drawer_widget.dart';
import 'package:instabook_source/widgets/general_button.dart';
import 'package:instabook_source/widgets/notebookwidget.dart';

bool status = false;

class SharetoScreen extends StatefulWidget {
  const SharetoScreen({Key? key}) : super(key: key);

  @override
  _SharetoScreenState createState() => _SharetoScreenState();
}

class _SharetoScreenState extends State<SharetoScreen> {
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
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 45.h,
                                    decoration: BoxDecoration(
                                        color: whiteColor,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    width: MediaQuery.of(context).size.width,
                                    child: TextFormField(
                                      textAlignVertical:
                                          TextAlignVertical.bottom,
                                      cursorColor: const Color(0xFF075E54),
                                      decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.only(
                                            bottom: 14.0, left: 10),
                                        border: InputBorder.none,
                                        fillColor: whiteColor,
                                        hintText: "Search here",
                                        prefixIcon: Padding(
                                          padding: const EdgeInsets.all(14.0),
                                          child: SvgPicture.asset(
                                              "images/search.svg"),
                                        ),
                                        hintStyle: TextStyle(
                                          color: baseColor.withOpacity(0.6),
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 45.w,
                                  height: 45.h,
                                  decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: SvgPicture.asset(
                                      "images/notification.svg"),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top: 160,
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
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Share to",
                                          style: TextStyle(
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SvgPicture.asset(
                                          "images/export.svg",
                                          height: 24.h,
                                          width: 24.w,
                                        )
                                      ],
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
                                        vertical: 0, horizontal: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              "images/folder.svg",
                                              height: 20.h,
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text(
                                              "Save As",
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w600),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(3)),
                                              activeColor: baseColor,
                                              onChanged: (value) {
                                                setState(() =>
                                                    selectedRadio = value!);
                                              },
                                              value: selectedRadio,
                                            ),
                                            Text(
                                              "Existing Notebook",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    width: 305.w,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xff4DB8CA)
                                          .withOpacity(0.2),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Corporate Finance",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    alignment: Alignment.center,
                                    height: 200.h,
                                    child: ListView.builder(
                                      itemCount: sharetobooks.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return InkWell(
                                            onTap: () {},
                                            child: NoteBookWidget(
                                              image: sharetobooks[index],
                                              subtitle:
                                                  sharetobookssubtitle[index],
                                              title: sharetobookstitle[index],
                                            ));
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          "images/feather.svg",
                                          height: 20.h,
                                        ),
                                        SizedBox(width: 10.w),
                                        Text(
                                          "Created By",
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    width: 305.w,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xff4DB8CA)
                                          .withOpacity(0.2),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Hans F. Ritter",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          "images/document.svg",
                                          height: 20.h,
                                        ),
                                        SizedBox(width: 10.w),
                                        Text(
                                          "Description",
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    width: 305.w,
                                    // height: 40.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xff4DB8CA)
                                          .withOpacity(0.2),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Notes from the class of corporate finance @NYU\nProf. Damodaran",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              "images/pin.svg",
                                              height: 20.h,
                                            ),
                                            SizedBox(width: 10.w),
                                            Text(
                                              "Notes/Reminder",
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w600),
                                            )
                                          ],
                                        ),
                                        SvgPicture.asset(
                                          "images/calendar.svg",
                                          height: 20.h,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    width: 305.w,
                                    // height: 40.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xff4DB8CA)
                                          .withOpacity(0.2),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Lorem Ipsum is simply dummy text of the\n printing and typesetting industry.",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        "images/clock.svg",
                                        height: 14.h,
                                      ),
                                      SizedBox(width: 5.w),
                                      Text(
                                        "Sept 1, 2021(8:00 AM)",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: const Color(0xff858585)),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        SvgPicture.asset(
                                          "images/help.svg",
                                          height: 14.h,
                                        ),
                                        SizedBox(width: 3.w),
                                        Text(
                                          "OCR",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(width: 5.w),
                                        FlutterSwitch(
                                          width: 26.0,
                                          height: 15.0,
                                          valueFontSize: 12.0,
                                          toggleSize: 15.0,
                                          toggleColor: baseColor,
                                          padding: 1,
                                          value: status,
                                          activeColor: switchactiveColor,
                                          inactiveColor: switchactiveColor,
                                          onToggle: (val) {
                                            setState(() {
                                              status = val;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  GeneralButton(
                                    onpress: () {
                                      // Get.to(() => SharetoScreen());
                                    },
                                    centerText: "Save and Share",
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
