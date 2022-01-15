import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instabook_source/constants/colors.dart';

class GeneralTextField extends StatelessWidget {
  final String hinttext;
  final String labeltext;

  // ignore: use_key_in_widget_constructors
  const GeneralTextField({required this.hinttext, required this.labeltext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 56.h,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          cursorColor: const Color(0xFF075E54),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(bottom: 23.0, left: 10),
            border: nonfocusborder,
            focusedBorder: focusborder,
            hintText: hinttext,
            label: Text(
              labeltext,
              style: TextStyle(
                color: baseColor,
                fontSize: 16.sp,
              ),
            ),
            hintStyle: TextStyle(
              color: greyColor,
              fontSize: 18.sp,
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileGeneralTextField extends StatelessWidget {
  String hinttext;
  String labelimg;
  String label;
  ProfileGeneralTextField(
      {required this.hinttext, required this.label, required this.labelimg});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                labelimg,
                width: 20.w,
                height: 20.h,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                label,
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
                color: const Color(0xff4DB8CA).withOpacity(0.2),
                borderRadius: BorderRadius.circular(10)),
            width: MediaQuery.of(context).size.width,
            child: TextFormField(
              textAlignVertical: TextAlignVertical.bottom,
              cursorColor: const Color(0xFF075E54),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(bottom: 18.0, left: 10),
                border: InputBorder.none,
                fillColor: const Color(0xff4DB8CA).withOpacity(0.2),
                hintText: hinttext,
                hintStyle: TextStyle(
                  color: const Color(0xff59BDCF),
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
