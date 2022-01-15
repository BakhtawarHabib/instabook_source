import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:instabook_source/Screens/digitalnotebookview.dart';
import 'package:instabook_source/constants/colors.dart';
import 'package:instabook_source/widgets/backbutton.dart';

class LandScapeView extends StatefulWidget {
  const LandScapeView({Key? key}) : super(key: key);

  @override
  _LandScapeViewState createState() => _LandScapeViewState();
}

class _LandScapeViewState extends State<LandScapeView> {
  int currentPos = 0;
  final controller = CarouselController();
  CarouselController? carouselController = CarouselController();
  List<int> list = [1, 2, 3, 4, 5];
  List<String> listPaths = [
    "images/rbook.png",
    "images/rbook2.png",
  ];
  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      // DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0))),
        elevation: 0.0,
        backgroundColor: baseColor,
        leading: const CustomBackButton(),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                Get.to(() => const DigitalNoteBookView());
              },
              child: SvgPicture.asset(
                "images/notebook.svg",
                color: whiteColor,
              ),
            ),
          )
        ],
        title: Image.asset("images/smalllogo.png"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: CarouselSlider.builder(
            itemCount: 2,
            carouselController: carouselController,
            options: CarouselOptions(
              height: 555.h,
              viewportFraction: 0.5,
              autoPlay: false,
              enlargeCenterPage: false,
              //scrollDirection: Axis.vertical,

              onPageChanged: (index, reason) {
                setState(
                  () {
                    currentPos = index;
                  },
                );
              },
            ),
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 30),
                    child: Image.asset("images/landscapebook.png"),
                  ),
                ],
              );
            },
          ),
        ),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.symmetric(vertical: 20),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Image.asset(
      //         "images/landscapebook.png",
      //         width: 368.w,
      //         height: 276.h,
      //       ),
      //       SvgPicture.asset("images/notebook.svg")
      //     ],
      //   ),
      // ),
    );
  }
}
