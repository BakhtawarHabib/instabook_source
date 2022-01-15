import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:instabook_source/Screens/onboard/onboarding.dart';
import 'package:instabook_source/constants/colors.dart';
import 'package:instabook_source/provider/navigation_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => NavigationProvider(),
        child: ScreenUtilInit(
            designSize: const Size(393, 851),
            builder: () => GetMaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                      fontFamily: 'MYRIADPRO',
                      scaffoldBackgroundColor: whiteColor),
                  home: OnboardingScreen(),
                )),
      );
}
