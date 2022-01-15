import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instabook_source/model/drawer_item.dart';

final itemsFirst = [
  const DrawerItem(title: 'Your Notebooks', icon: "images/documentout.svg"),
  const DrawerItem(title: 'Saved Notebooks', icon: "images/bookmark.svg"),
  const DrawerItem(title: 'Shared Notebooks', icon: "images/share.svg"),
  const DrawerItem(title: 'Discover New  Notes', icon: "images/add.svg"),
  const DrawerItem(title: 'Settings', icon: "images/setting.svg"),
];

final itemsSecond = [
  const DrawerItem(title: 'Logout', icon: "images/logout.svg"),
];
