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
import 'package:instabook_source/Screens/sharednotebooks.dart';
import 'package:instabook_source/constants/colors.dart';
import 'package:instabook_source/constants/strings.dart';
import 'package:instabook_source/provider/navigation_drawer_widget.dart';
import 'package:instabook_source/widgets/bookcontainer.dart';
import 'package:instabook_source/widgets/general_button.dart';

class SavedNotebooksScreen extends StatefulWidget {
  const SavedNotebooksScreen({Key? key}) : super(key: key);

  @override
  _SavedNotebooksScreenState createState() => _SavedNotebooksScreenState();
}

class _SavedNotebooksScreenState extends State<SavedNotebooksScreen> {
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
              Column(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        scaffoldKey.currentState!.openDrawer();
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SvgPicture.asset(
                                            "images/drawer.svg"),
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
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: TextFormField(
                                          textAlignVertical:
                                              TextAlignVertical.bottom,
                                          cursorColor: const Color(0xFF075E54),
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.only(
                                                    bottom: 14.0, left: 10),
                                            border: InputBorder.none,
                                            fillColor: whiteColor,
                                            hintText: "Search here",
                                            prefixIcon: Padding(
                                              padding:
                                                  const EdgeInsets.all(14.0),
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
                                          borderRadius:
                                              BorderRadius.circular(10)),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Last Notes Saved",
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
                        (index) => InkWell(
                              onTap: () {
                                Get.to(() => const SharedNotebooksScreen());
                              },
                              child: Padding(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(notepics[index]),
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Text(
                                                  "Name",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      color: blackColor
                                                          .withOpacity(0.5)),
                                                ),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    SvgPicture.asset(
                                                      "images/openbook.svg",
                                                      height: 14.h,
                                                      width: 14.w,
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Text(
                                                      bookname[index],
                                                      style: font12styleregular,
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Created By",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      color: blackColor
                                                          .withOpacity(0.5)),
                                                ),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    SvgPicture.asset(
                                                      "images/person.svg",
                                                      height: 14.h,
                                                      width: 14.w,
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Text(
                                                      createdby[index],
                                                      style: font12styleregular,
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Description",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w100,
                                                          color: blackColor
                                                              .withOpacity(
                                                                  0.5)),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            FittedBox(
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
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
                                                    descriptionsbook[index],
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w100,
                                                        color: blackColor
                                                            .withOpacity(0.5)),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "All Notebooks Saved",
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: blackColor),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Positioned(
                        top: 70,
                        left: 10,
                        child: InkWell(
                          onTap: () {
                            carouselController!.nextPage();
                          },
                          child: Image.asset(
                            "images/leftarrow.png",
                          ),
                        ),
                      ),
                      CarouselSlider.builder(
                        itemCount: listPaths.length,
                        carouselController: carouselController,
                        options: CarouselOptions(
                          viewportFraction: 0.3,
                          autoPlay: false,
                          enlargeCenterPage: true,
                          //scrollDirection: Axis.vertical,

                          onPageChanged: (index, reason) {
                            setState(
                              () {
                                currentPos = index;
                              },
                            );
                          },
                        ),
                        itemBuilder:
                            (BuildContext context, int index, int realIndex) {
                          return Padding(
                            padding: const EdgeInsets.all(0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: const Color(0xffC1E2E9),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    width: 111.w,
                                    height: 130.h,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Image.asset(listPaths[index]),
                                        ],
                                      ),
                                    )),
                                Text(
                                  notebooknames[index],
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w600,
                                      color: blackColor),
                                ),
                                Text(
                                  notebookssubtitle[index],
                                  style: TextStyle(
                                      fontSize: 10.sp, color: blackColor),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                      Positioned(
                        top: 70,
                        right: 10,
                        child: InkWell(
                          onTap: () {
                            carouselController!.previousPage();
                          },
                          child: Image.asset(
                            "images/rightarrow.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              GeneralButton(
                onpress: () {
                  Get.to(() => ScanBooksScreen());
                },
                icon: "images/camera.svg",
                centerText: "Scan New Notes",
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
