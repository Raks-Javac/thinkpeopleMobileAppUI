import 'package:flutter/material.dart';
import 'package:thinkpeople/animations/animate_screen.dart';
import 'package:thinkpeople/core/utils/constants.dart';
import 'package:thinkpeople/core/utils/style.dart';
import 'package:thinkpeople/ui/auth/sign_up.dart';
import 'package:thinkpeople/ui/shared/bubble.dart';
import 'package:thinkpeople/ui/shared/buttons.dart';
import 'package:thinkpeople/ui/shared/text_fields.dart';

class TkSignIn extends StatelessWidget {
  const TkSignIn({Key? key}) : super(key: key);

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
                    "Welcome Back",
                    textAlign: TextAlign.center,
                    style: kLargeTextStyle.copyWith(
                        color: kTriviaGreen,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.8,
                        fontSize: screenAwareSize(23, context)),
                  ),
                  UIHelper.verticalSpaceSmall,
                  Image.asset(
                    ImageStore.loginIllus,
                    fit: BoxFit.fitWidth,
                    width: deviceWidth(context) / 2.5,
                  ),
                  UIHelper.verticalSpaceSmall,
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
                  Text(
                    "Forget Password ",
                    style: TextStyle(
                      fontFamily: "Pp",
                      color: kTriviaGreen.withOpacity(0.7),
                      fontSize: screenAwareSize(26, context),
                    ),
                  ),
                  UIHelper.verticalSpaceMedium,
                  TkB(
                    buttonText: "Login",
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
                                  preview: const TkSignUp(), duration: 1));
                        },
                        child: Text(
                          "Sign Up",
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
