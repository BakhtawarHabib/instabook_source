import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookContainer extends StatelessWidget {
  String bookimage;
  BookContainer({required this.bookimage});
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color(0xffC1E2E9),
            borderRadius: BorderRadius.circular(10)),
        width: 104.w,
        height: 130.h,
        child: Stack(
          children: [
            Positioned(
              right: 5,
              top: 5,
              child: Image.asset(
                bookimage,
                // height: 120,
              ),
            ),
          ],
        ));
  }
}
