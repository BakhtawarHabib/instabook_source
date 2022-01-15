import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:instabook_source/Screens/splashscreen.dart';
import 'package:instabook_source/constants/colors.dart';
import 'package:instabook_source/widgets/general_button.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 2;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 4.0,
      width: 30.0,
      decoration: BoxDecoration(
        color: isActive
            ? const Color(0xFF4DB8CA)
            : const Color(0xFF4DB8CA).withOpacity(0.2),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 00.0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Container(
                        height: 600.0,
                        child: PageView(
                          physics: const ClampingScrollPhysics(),
                          controller: _pageController,
                          onPageChanged: (int page) {
                            setState(() {
                              _currentPage = page;
                            });
                          },
                          children: <Widget>[
                            SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Stack(
                                        children: [
                                          SvgPicture.asset(
                                            "images/rectangle.svg",
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "SKIP",
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: whiteColor,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 30.h,
                                                ),
                                                Container(
                                                  child: Image.asset(
                                                    "images/logo.png",
                                                    height: 140,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 25.h),
                                    Image.asset(
                                      "images/bb1.png",
                                      height: 230,
                                    ),
                                    SizedBox(height: 25.h),
                                    Text(
                                      'Keep all your notes \norganized in one place',
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 20.0.h),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: Stack(
                                      children: [
                                        SvgPicture.asset(
                                          "images/rectangle.svg",
                                          width:
                                              MediaQuery.of(context).size.width,
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "SKIP",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: whiteColor,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                        Center(
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 30.h,
                                              ),
                                              Container(
                                                child: Image.asset(
                                                  "images/logo.png",
                                                  height: 140,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 25.h),
                                  Image.asset(
                                    "images/bb2.png",
                                    height: 230,
                                  ),
                                  SizedBox(height: 25.h),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Center(
                                      child: RichText(
                                        text: TextSpan(
                                            text: "Introducing,",
                                            style: TextStyle(
                                                fontSize: 20.sp,
                                                color: blackColor),
                                            children: [
                                              TextSpan(
                                                text: " Insta Notebook",
                                                style: TextStyle(
                                                    fontSize: 20.sp,
                                                    fontWeight: FontWeight.w600,
                                                    color: blackColor),
                                              )
                                            ]),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'An app that digitalizes your notes so you can have\n your notes wherever you are',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildPageIndicator(),
                    ),
                    _currentPage != _numPages ? const Text('') : const Text(''),
                    GeneralButton(
                      onpress: () {
                        Get.to(() => SplashScreen());
                      },
                      centerText: "Next",
                    ),
                    SizedBox(
                      height: 30.h,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
