import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instabook_source/constants/colors.dart';

class NoteWidget extends StatelessWidget {
  String image;
  String title;
  String subtitle;
  NoteWidget(
      {required this.image, required this.subtitle, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(width: 104.w, height: 130.h, child: Image.asset(image)),
          SizedBox(
            height: 10.h,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: blackColor),
          ),
          SizedBox(
            height: 3.h,
          ),
          Text(
            subtitle,
            style: TextStyle(fontSize: 12.sp, color: const Color(0xff858585)),
          )
        ],
      ),
    );
  }
}
