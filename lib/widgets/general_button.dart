import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instabook_source/constants/colors.dart';

// ignore: must_be_immutable
class GeneralButton extends StatelessWidget {
  final String centerText;

  final VoidCallback onpress;
  final String? icon;
  Widget? routeTo;

  GeneralButton({
    required this.onpress,
    required this.centerText,
    this.icon,
    this.routeTo,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        alignment: Alignment.center,
        height: 50.h,
        width: 203.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff43ACA0),
                Color(0xff93D8E8),
              ],
            )),
        child: Center(
          child: Row(
            children: [
              Spacer(),
              icon == null
                  ? SizedBox()
                  : Padding(
                      padding: const EdgeInsets.only(bottom: 0.0),
                      child: SvgPicture.asset(
                        icon!,
                        color: whiteColor,
                        height: 16,
                      )),
              SizedBox(
                width: 10.h,
              ),
              Text(
                centerText,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
