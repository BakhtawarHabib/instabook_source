import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:instabook_source/Screens/profile/profilescreen.dart';
import 'package:instabook_source/Screens/scanbooks.dart';
import 'package:instabook_source/constants/colors.dart';
import 'package:instabook_source/constants/strings.dart';
import 'package:instabook_source/provider/navigation_drawer_widget.dart';

import 'package:instabook_source/widgets/bookcontainer.dart';
import 'package:instabook_source/widgets/general_button.dart';

import '../digitalnotebookview.dart';
import '../savednotesbook.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                      "images/homerec.svg",
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Your Notebooks",
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                  color: whiteColor),
                            ),
                          ),
                          SizedBox(
                            height: 220.h,
                            child: ListView.builder(
                              itemCount: bookimages.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {
                                    Get.to(() => DigitalNoteBookView());
                                  },
                                  child: Column(
                                    children: [
                                      BookContainer(
                                        bookimage: bookimages[index],
                                      ),
                                      Text(
                                        notebooknames[index],
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                            color: whiteColor),
                                      ),
                                      Text(
                                        notebookssubtitle[index],
                                        style: TextStyle(
                                            fontSize: 12.sp, color: whiteColor),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
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
                      "Recent Notes",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: blackColor),
                    ),
                    InkWell(
                        onTap: () {
                          Get.to(() => ScanBooksScreen());
                        },
                        child: Image.asset("images/scan.png"))
                  ],
                ),
              ),
              Column(
                children: List.generate(
                    2,
                    (index) => Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 10, bottom: 20),
                          child: Container(
                            height: 158.h,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius:
                                      4.0, // has the effect of softening the shadow
                                  spreadRadius:
                                      2.0, // has the effect of extending the shadow
                                  offset: const Offset(
                                    1.0, // horizontal, move right 10
                                    -1, // vertical, move down 10
                                  ),
                                )
                              ],
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(notepics[index]),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              "images/send.svg",
                                              height: 14.h,
                                              width: 14.w,
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text(
                                              "Send to:",
                                              style: font12styleregular,
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          sendto[index],
                                          style: font12styleregular,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              "images/document.svg",
                                              height: 14.h,
                                              width: 14.w,
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text(
                                              "Description",
                                              style: font12styleregular,
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          description[index],
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w100,
                                              color:
                                                  blackColor.withOpacity(0.5)),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          "images/pin.svg",
                                          height: 14.h,
                                          width: 14.w,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          assignmentsubject[index],
                                          style: font12styleregular,
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )),
              ),
              GeneralButton(
                onpress: () {
                  Get.to(() => ScanBooksScreen());
                },
                icon: "images/camera.svg",
                centerText: "Scan New Notes",
              ),
              SizedBox(
                height: 15.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
