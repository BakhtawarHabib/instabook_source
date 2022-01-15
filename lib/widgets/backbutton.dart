import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instabook_source/constants/colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: whiteColor,
        ),
      ),
    );
  }
}
