
// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:thinkpeople/core/utils/constants.dart';

class BubblesTop extends StatelessWidget {
  final double left;
  final double top;
  final double bottom;
  final double right;
  final Color bColor;

  const BubblesTop(
      {required this.left,
      required this.top,
      required this.bColor,
      required this.bottom,
      required this.right});
// -250
// -250
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
        height: 400,
        width: 400,
        decoration: BoxDecoration(
          color: bColor,
          borderRadius: BorderRadius.circular(200),
        ),
      ),
    );
  }
}

class Bubbles extends StatelessWidget {
  final double left;
  final double top;
  final double bottom;
  final double right;
  final Color bColor;

 // ignore: use_key_in_widget_constructors
 Bubbles(
      {required this.left,
      required this.top,
      required this.bColor,
      required this.bottom,
      required this.right});
// -250
// -250
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
        height: 400,
        width: 400,
        decoration: BoxDecoration(
          color: bColor,
          borderRadius: BorderRadius.circular(200),
        ),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
              margin: const EdgeInsets.only(
                bottom: 60,
                right: 30,
              ),
              child: Image.asset(
                ImageStore.bubbleImage,
              )),
        ),
      ),
    );
  }
}
