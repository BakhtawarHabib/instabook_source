import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:instabook_source/Screens/profile/profilescreen.dart';
import 'package:instabook_source/Screens/sharednotebooks.dart';
import 'package:instabook_source/Screens/sharetoscreen.dart';
import 'package:instabook_source/constants/colors.dart';
import 'package:instabook_source/constants/strings.dart';
import 'package:instabook_source/provider/navigation_drawer_widget.dart';
import 'package:instabook_source/widgets/bookcontainer.dart';
import 'package:instabook_source/widgets/general_button.dart';

bool status = false;

class OCRConservationView extends StatefulWidget {
  const OCRConservationView({Key? key}) : super(key: key);

  @override
  _OCRConservationViewState createState() => _OCRConservationViewState();
}

class _OCRConservationViewState extends State<OCRConservationView> {
  int currentPos = 0;
  final controller = CarouselController();
  CarouselController? carouselController = CarouselController();
  List<int> list = [1, 2, 3, 4, 5];
  List<String> listPaths = [
    "images/rbook.png",
    "images/rbook2.png",
  ];
  final font12styleregular = TextStyle(fontSize: 12.sp, color: blackColor);
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: NavigationDrawerWidget(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
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
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TC Business Plan",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: blackColor),
                    ),
                    SvgPicture.asset("images/notebook.svg")
                  ],
                ),
              ),
              Image.asset(
                "images/trendnote3.png",
                height: 350,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "images/document.svg",
                      height: 14.h,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "Note",
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xff4DB8CA).withOpacity(0.2),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Save As A Copy",
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w600),
                    ),
                    FlutterSwitch(
                      width: 30.0,
                      height: 18.0,
                      valueFontSize: 12.0,
                      toggleSize: 17.0,
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
              GeneralButton(
                onpress: () {
                  Get.to(() => SharetoScreen());
                },
                centerText: 'Done',
                icon: "images/comment.svg",
              ),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
