import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instabook_source/constants/colors.dart';

class NoteBookWidget extends StatelessWidget {
  String image;
  String title;
  String subtitle;
  NoteBookWidget(
      {required this.image, required this.subtitle, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: const Color(0xffC1E2E9),
              borderRadius: BorderRadius.circular(10)),
          width: 104.w,
          height: 130.h,
          child: Image.asset(
            image,
            height: 100.h,
            width: 78.w,
          ),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 12.sp, fontWeight: FontWeight.w600, color: blackColor),
        ),
        SizedBox(
          height: 3.h,
        ),
        Text(
          subtitle,
          style: TextStyle(fontSize: 12.sp, color: const Color(0xff858585)),
        )
      ],
    );
  }
}
