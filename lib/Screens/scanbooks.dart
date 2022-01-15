import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:instabook_source/Screens/ocrconservationnoteview.dart';
import 'package:instabook_source/Screens/sharetoscreen.dart';
import 'package:instabook_source/constants/colors.dart';
import 'package:instabook_source/widgets/general_button.dart';

class ScanBooksScreen extends StatefulWidget {
  const ScanBooksScreen({Key? key}) : super(key: key);

  @override
  _ScanBooksScreenState createState() => _ScanBooksScreenState();
}

class _ScanBooksScreenState extends State<ScanBooksScreen> {
  List images = [
    "images/recent1.png",
    "images/recent2.png",
    "images/recentt3.png",
    "images/recentt3.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            "images/scanimage.png",
            height: 475.h,
            width: 435.w,
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              SvgPicture.asset("images/autoscan.svg", height: 91.h),
              SizedBox(
                width: 20.w,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        images.length,
                        (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    height: 91.h,
                                    // width: 60,
                                    padding: const EdgeInsets.only(
                                      top: 0.0,
                                    ),
                                    margin: const EdgeInsets.only(
                                        top: 8.0, right: 8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Image.asset(
                                      images[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    right: 0.0,
                                    child: GestureDetector(
                                      onTap: () => setState(
                                        () {
                                          images.removeAt(index);
                                        },
                                      ),
                                      child: const Align(
                                        alignment: Alignment.topRight,
                                        child: CircleAvatar(
                                          radius: 12.0,
                                          backgroundColor: baseColor,
                                          child: Icon(Icons.close,
                                              size: 15, color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          GeneralButton(
            onpress: () {
              Get.to(() => const SharetoScreen());
            },
            centerText: "Save",
          ),
          SizedBox(
            height: 40.h,
          ),
        ],
      ),
    );
  }
}
