import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageStore {
  String fontFolderLocation = "";
  String iconFolderLocation = "";
  static String imageFolderLocation = "assets/images";
  static String covidBackgroundImage = "backgroundImage.png";
  static String onBoardingImage1 = "$imageFolderLocation/play.png";
  static String onBoardingImage2 = "$imageFolderLocation/knowledge_to_win.png";
  static String onBoardingImage3 = "$imageFolderLocation/win.png";
}

const Color kTriviaGreen = Color(0xFF226F54);
const Color kTriviaYellow = Color(0xFFFFCC00);
const Color kTriviaLightBlack = Color(0xFF222222);
const Color kTriviaButtonInactiveColor = Color(0xFFC1BFBF);
const Color kTriviaLightYellow = Color(0xFFF7E8AB);
const Color kTriviaLightGreen = Color(0xFF5DF1BD);
const Color kTriviaLightGrey = Color(0xFFF1F3F4);
const Color kOnboardingInactive = Color(0xFFC4C4C4);
const Color kTriviaWhiteColor = Colors.white;

const String kAppName = "Football Trivia";
const TextStyle kLargeTextStyle =
    TextStyle(fontFamily: "VL", color: Colors.white);
const TextStyle kMediumTextStyle = TextStyle(
  fontFamily: "VL",
);
const TextStyle kSmallTextStyle = TextStyle(fontFamily: "VL");
