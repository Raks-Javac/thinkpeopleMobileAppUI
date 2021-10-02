import 'package:flutter/material.dart';
import 'package:thinkpeople/core/utils/constants.dart';
import 'package:thinkpeople/core/utils/style.dart';

class TkP extends StatelessWidget {
  final VoidCallback? onPressed;
  final String buttonText;
  final Color buttonColor;
  const TkP(
      {Key? key,
      this.onPressed,
      required this.buttonText,
      required this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: kMediumTextStyle.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: screenAwareSize(28, context)),
      ),
      minWidth: deviceWidth(context) / 1.13,
      height: screenAwareSize(79, context),
      color: buttonColor,
      disabledColor: kTriviaLightGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
