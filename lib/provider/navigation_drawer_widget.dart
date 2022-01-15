import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:instabook_source/Screens/Home/homescreen.dart';
import 'package:instabook_source/Screens/onboard/onboarding.dart';
import 'package:instabook_source/Screens/recommendednotes.dart';
import 'package:instabook_source/Screens/savednotesbook.dart';
import 'package:instabook_source/Screens/settings/settingscreen.dart';
import 'package:instabook_source/Screens/sharednotebooks.dart';
import 'package:instabook_source/constants/colors.dart';
import 'package:instabook_source/data/drawer_items.dart';
import 'package:instabook_source/model/drawer_item.dart';
import 'package:instabook_source/provider/navigation_provider.dart';
import 'package:provider/provider.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final safeArea =
        EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top);

    final provider = Provider.of<NavigationProvider>(context);
    final isCollapsed = provider.isCollapsed;

    return Container(
      width: isCollapsed ? MediaQuery.of(context).size.width * 0.2 : null,
      child: Drawer(
        child: Container(
          color: const Color(0xFF4DB8CA),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 24).add(safeArea),
                width: double.infinity,
                color: Colors.white12,
                child: buildHeader(isCollapsed),
              ),
              const SizedBox(height: 24),
              buildList(items: itemsFirst, isCollapsed: isCollapsed),
              const SizedBox(height: 24),
              const SizedBox(height: 24),
              const Spacer(),
              buildList(
                indexOffset: itemsFirst.length,
                items: itemsSecond,
                isCollapsed: isCollapsed,
              ),
              buildCollapseIcon(context, isCollapsed),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildList({
    required bool isCollapsed,
    required List<DrawerItem> items,
    int indexOffset = 0,
  }) =>
      ListView.separated(
        padding: isCollapsed ? EdgeInsets.zero : padding,
        shrinkWrap: true,
        primary: false,
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          final item = items[index];

          return Column(
            children: [
              buildMenuItem(
                isCollapsed: isCollapsed,
                text: item.title,
                icon: item.icon,
                onClicked: () => selectItem(context, indexOffset + index),
              ),
              const Divider(
                color: Colors.white70,
                height: 0,
              ),
            ],
          );
        },
      );

  void selectItem(BuildContext context, int index) {
    final navigateTo = (page) => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => page,
        ));

    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Get.offAll(() => HomeScreen());
        break;
      case 1:
        Get.offAll(() => SavedNotebooksScreen());
        break;
      case 2:
        Get.offAll(() => SharedNotebooksScreen());
        break;
      case 3:
        Get.offAll(() => RecommendedNotesScreen());
        break;
      case 4:
        Get.offAll(() => SettingScreen());
        break;
      case 5:
        Get.offAll(() => OnboardingScreen());
        break;
    }
  }

  Widget buildMenuItem({
    required bool isCollapsed,
    required String text,
    required String icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final leading = SvgPicture.asset(
      icon,
      color: whiteColor,
    );

    return Material(
      color: Colors.transparent,
      child: isCollapsed
          ? ListTile(
              title: leading,
              onTap: onClicked,
            )
          : ListTile(
              leading: leading,
              title: Text(text,
                  style: TextStyle(
                      color: color, fontSize: 16, fontWeight: FontWeight.w600)),
              onTap: onClicked,
            ),
    );
  }

  Widget buildCollapseIcon(BuildContext context, bool isCollapsed) {
    final double size = 52;
    final icon = isCollapsed ? Icons.arrow_forward_ios : Icons.arrow_back_ios;
    final alignment = isCollapsed ? Alignment.center : Alignment.centerRight;
    final margin = isCollapsed ? null : const EdgeInsets.only(right: 16);
    final width = isCollapsed ? double.infinity : size;

    return Container(
      alignment: alignment,
      margin: margin,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          child: Container(
            width: width,
            height: size,
            child: Icon(icon, color: Colors.white),
          ),
          onTap: () {
            final provider =
                Provider.of<NavigationProvider>(context, listen: false);

            provider.toggleIsCollapsed();
          },
        ),
      ),
    );
  }

  Widget buildHeader(bool isCollapsed) => isCollapsed
      ? Image.asset("images/smalllogo.png")
      : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("images/logo.png")],
        );
}
