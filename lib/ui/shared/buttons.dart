import 'package:flutter/material.dart';
import 'package:thinkpeople/core/utils/constants.dart';
import 'package:thinkpeople/core/utils/style.dart';

class TkB extends StatelessWidget {
  final VoidCallback? onPressed;
  final String buttonText;
  final Color buttonColor;
  final double? buttonHeight;
  final double? buttonWidth;
  const TkB(
      {Key? key,
      this.onPressed,
      this.buttonHeight,
      this.buttonWidth,
      required this.buttonText,
      required this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 2,
      onPressed: onPressed,
      focusColor: kTriviaGreen,
      child: Text(
        buttonText,
        style: kMediumTextStyle.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            letterSpacing: 2.5,
            fontSize: screenAwareSize(28, context)),
      ),
      minWidth: deviceWidth(context) / 1.13,
      height: buttonHeight ?? screenAwareSize(79, context),
      color: buttonColor,
      disabledColor: kTriviaLightGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
