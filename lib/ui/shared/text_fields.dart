// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:thinkpeople/core/utils/constants.dart';
import 'package:thinkpeople/core/utils/style.dart';

const kTextFieldBorder = BorderRadius.all(
  Radius.circular(15),
);
var kPurpleTextFieldStyling = OutlineInputBorder(
    borderRadius: kTextFieldBorder,
    borderSide: BorderSide(color: kTriviaGreen.withOpacity(0.7)));

class TextFieldGreen extends StatelessWidget {
  final String? label;
  final Function(String)? onChanged;
  final TextEditingController? fieldController;
  final String? hintText;
  final Color? labelColor;
  final void Function(String?)? onSaved;
  final VoidCallback? onEditingComplete;
  final TextStyle? hintTextStyle;
  final String? Function(String?)? validator;
  final bool? shouldBeWhite;
  final Widget? suffixWidget;
  final bool? obscure;
  final TextInputType? keyboardType;

  // ignore: prefer_const_constructors_in_immutables
  TextFieldGreen({
    this.obscure,
    this.fieldController,
    this.keyboardType,
    this.onChanged,
    this.suffixWidget,
    this.hintText,
    this.onSaved,
    this.onEditingComplete,
    this.validator,
    this.shouldBeWhite,
    this.labelColor,
    this.hintTextStyle,
    @required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: screenAwareSize(29, context),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Theme(
            data: ThemeData(
              // ignore: prefer_const_constructors
              inputDecorationTheme: InputDecorationTheme(
                fillColor: kTriviaGreen,
                // border: kTextFieldBlackStyling,

                // enabledBorder: kTextFieldBlackStyling,

                // focusedErrorBorder: kPurpleTextFieldStyling,
              ),
            ),
            child: TextFormField(
              cursorWidth: 0.8,
              cursorColor: kTriviaGreen,
              // cursorColor: kMyHisaPurple,
              cursorHeight: screenAwareSize(40, context),
              controller: fieldController,

              style: TextStyle(
                fontSize: screenAwareSize(30, context),
                fontFamily: "Ep",
              ),
              keyboardType: keyboardType ?? TextInputType.emailAddress,
              onChanged: onChanged,
              validator: validator,
              obscureText: obscure ?? false,
              onEditingComplete: onEditingComplete,
              onSaved: onSaved,
              decoration: InputDecoration(
                fillColor: kTriviaGreen.withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),

                hintTextDirection: TextDirection.ltr,
                labelStyle: kSmallTextStyle,
                suffixIcon: suffixWidget ?? const Text(""),
                hintText: hintText,
                // errorStyle: TextStyle(color: kMyHisaPurple),
                hintStyle: hintTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
