// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:thinkpeople/core/utils/constants.dart';
import 'package:thinkpeople/core/utils/style.dart';


class FootballTriviaLogo extends StatelessWidget {
  double? logoFontSize;
  // ignore: use_key_in_widget_constructors
  FootballTriviaLogo({this.logoFontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Football Trivia",
      style: kLargeTextStyle.copyWith(
        fontSize: screenAwareSize(logoFontSize ?? 100, context),
      ),
    );
  }
}
