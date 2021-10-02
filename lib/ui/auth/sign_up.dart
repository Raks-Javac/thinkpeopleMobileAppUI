import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:thinkpeople/animations/animate_screen.dart';
import 'package:thinkpeople/core/utils/constants.dart';
import 'package:thinkpeople/core/utils/style.dart';
import 'package:thinkpeople/ui/auth/sign_in.dart';
import 'package:thinkpeople/ui/shared/bubble.dart';
import 'package:thinkpeople/ui/shared/buttons.dart';
import 'package:thinkpeople/ui/shared/text_fields.dart';

class TkSignUp extends StatelessWidget {
  const TkSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _splashContainer(context));
  }

  static Widget _splashContainer(
    BuildContext context,
  ) {
    return Stack(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        BubblesTop(
          bColor: kTriviaGreen.withOpacity(0.4),
          left: -250,
          top: -250,
          bottom: 0.0,
          right: 0.0,
        ),
        Container(
          alignment: Alignment.center,
          height: deviceHeight(context),
          child: ListView(children: [
            UIHelper.verticalSpaceLarge,
            UIHelper.verticalSpaceLarge,
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Welcome onboard",
                    textAlign: TextAlign.center,
                    style: kLargeTextStyle.copyWith(
                        color: kTriviaGreen,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.8,
                        fontSize: screenAwareSize(23, context)),
                  ),
                  UIHelper.verticalSpaceSmall,
                  Container(
                    alignment: Alignment.center,
                    width: deviceWidth(context) / 1.2,
                    child: Text(
                      "We are happy to have you on board.We hope you have a great experience in the app.",
                      textAlign: TextAlign.center,
                      style: kLargeTextStyle.copyWith(
                          color: kTriviaGreen,
                          fontWeight: FontWeight.w300,
                          fontSize: screenAwareSize(18, context)),
                    ),
                  ),
                  UIHelper.verticalSpaceMedium,
                  TextFieldGreen(
                    hintText: "Name",
                    label: '',
                    hintTextStyle: kMediumTextStyle.copyWith(
                      color: kTriviaGreen,
                    ),
                  ),
                  TextFieldGreen(
                    hintText: "Email",
                    label: '',
                    hintTextStyle: kMediumTextStyle.copyWith(
                      color: kTriviaGreen,
                    ),
                  ),
                  TextFieldGreen(
                    hintText: "Username",
                    label: '',
                    hintTextStyle: kMediumTextStyle.copyWith(
                      color: kTriviaGreen,
                    ),
                  ),
                  TextFieldGreen(
                    hintText: "Password",
                    label: '',
                    hintTextStyle: kMediumTextStyle.copyWith(
                      color: kTriviaGreen,
                    ),
                  ),
                  UIHelper.verticalSpaceMedium,
                  TkB(
                    buttonText: "Register",
                    buttonColor: kTriviaGreen,
                    buttonHeight: screenAwareSize(90, context),
                    buttonWidth: deviceWidth(context) / 1.2,
                    onPressed: () {
                      Navigator.push(
                          context,
                          PreviewSlideRoute(
                              preview: const TkSignIn(), duration: 1));
                    },
                  ),
                  UIHelper.verticalSpaceSmall,
                  Row(
                    textBaseline: TextBaseline.ideographic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Do not have an account ? ",
                        style: TextStyle(
                          fontFamily: "Pp",
                          color: Colors.grey,
                          fontSize: screenAwareSize(26, context),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PreviewSlideRoute(
                                  preview: const TkSignIn(), duration: 1));
                        },
                        child: Text(
                          "Sign In",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontFamily: "Ep",
                            fontWeight: FontWeight.bold,
                            color: kTriviaGreen,
                            fontSize: screenAwareSize(25, context),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            UIHelper.verticalSpaceLarge,
          ]),
        )
      ],
    );
  }
}
