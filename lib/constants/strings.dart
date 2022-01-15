import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:instabook_source/constants/colors.dart';

List bookimages = ["images/book.png", "images/book2.png", "images/book3.png"];
List notebooknames = ["Corporate Finance", "TC Business plan", "Meeting Notes"];
List notebookssubtitle = ["University", "TC Corporation", "TC Corporation"];

//recentdata
List notepics = ["images/note1.png", "images/note2.png"];
List sendto = ["Ruben Donin", "Giana Septimus"];
List description = ["Problem #3 solved", "Class 1"];
List assignmentsubject = ["Physics New assignment", "Math New assignment"];

//lastnotesdata
List bookname = ["Corporate Finance ", "Game Theory"];
List createdby = ["Hans F. Ritter", "Bill G."];
List descriptionsbook = [
  "Notes from the class of @NYU Prof.\n Damodaran",
  "Nash Equilibrium in games with and\n withouts repetition microecomics"
];

List lastbookauthors = ["By : Jaunca", "By : Wawis", "By : Rockdrigo"];

List recentnotesimg = [
  "images/recent1.png",
  "images/recent2.png",
  "images/recentt3.png"
];
List recentnotes = ["Follow Up Math", "Market Analysis", "Go to market"];
List recentnotesdate = ["21/7/2021", "Updated : 21/7/2021", "Strategy 2021"];

List recommendnoteimgs = [
  "images/recommendbook1.png",
  "images/recommendbook2.png",
  "images/recommendbook3.png",
];
List recommendnotenames = [
  "Energy",
  "Relativity Law",
  "My journey into\n the Sapce",
];

List recommendnoteauthors = [
  "Nikota T.",
  "Albert A.",
  "Richard B.",
];
//Trendingnotesdata//

List trendnoteimgs = [
  "images/trendnote1.png",
  "images/trendnote2.png",
  "images/trendnote3.png",
];
List trendnotenames = [
  "Meeting Notes",
  "TC business Plan",
  "TC Business Plan",
];
List trendnoteauthors = [
  "By : Jaunca",
  "By : Wawis",
  "By : Rockdrigo",
];

//Trendingnotesbooksdata//

List trendnotebooksimgs = [
  "images/trendnotebook1.png",
  "images/trendnotebook2.png",
  "images/trendnotebook3.png",
];
List trendnotebooksnames = [
  "An Alternative \nSolution",
  "E=mc2",
  "Go to market",
];
List trendnotebooksauthors = [
  "Nikota T.",
  "Albert A.",
  "Richard B.",
];

List sharetoclients = [
  "images/img1.png",
  "images/img2.png",
  "images/img3.png",
  "images/img4.png",
];
List sharetoclientsnames = [
  "Jessica",
  "John",
  "Michael",
  "Jessie",
];

List sharetobooks = [
  "images/rbook.png",
  "images/rbook2.png",
  "images/rbook2.png",
  "images/rbook.png",
];
List sharetobookstitle = [
  "Corporate Finance",
  "TC Business plan",
  "Meeting Notes",
  "Corporate Finance",
];

List sharetobookssubtitle = [
  "University",
  "TC Corporation",
  "TC Corporation",
  "University",
];

List followedtopics = [
  "Math",
  "Science",
  "Journalism",
  "Astrology",
];
List mysavednotes = [
  "Psychology",
  "Market Analysis",
  "Journalism",
];

List settingicons = [
  "images/scanout.svg",
  "images/camera.svg",
  "images/handwrite.svg",
  "images/question.svg",
  "images/about.svg",
  "images/documentout.svg",
  "images/paper.svg"
];
List settingnames = [
  "Scan Settings",
  "Camera Access",
  "Handwriting Recognition (OCR)",
  "Help Center",
  "About",
  "Terms of use",
  "Privacy Policy",
];
List settingtrailwidget = [
  const Icon(
    Icons.arrow_forward_ios,
    color: baseColor,
  ),
  FlutterSwitch(
    width: 26.0,
    height: 15.0,
    valueFontSize: 12.0,
    toggleSize: 15.0,
    toggleColor: baseColor,
    padding: 1,
    activeColor: switchactiveColor,
    inactiveColor: switchactiveColor,
    onToggle: (val) {},
    value: false,
  ),
  const Icon(
    Icons.arrow_forward_ios,
    color: baseColor,
  ),
  const Icon(
    Icons.arrow_forward_ios,
    color: baseColor,
  ),
  const Icon(
    Icons.arrow_forward_ios,
    color: baseColor,
  ),
  const Icon(
    Icons.arrow_forward_ios,
    color: baseColor,
  ),
  const Icon(
    Icons.arrow_forward_ios,
    color: baseColor,
  )
];

List commentby = ["Juan:", "Me:", "Juan:"];
List comments = [
  "Please create a PPT with this note.",
  "Ok, no problem",
  "Thanks!"
];
