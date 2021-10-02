import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thinkpeople/animations/animate_screen.dart';
import 'package:thinkpeople/core/utils/constants.dart';
import 'package:thinkpeople/core/utils/style.dart';
import 'package:thinkpeople/ui/auth/sign_up.dart';
import 'package:thinkpeople/ui/shared/bubble.dart';
import 'package:thinkpeople/ui/shared/buttons.dart';

class TkSplashScreen extends StatefulWidget {
  const TkSplashScreen({Key? key}) : super(key: key);

  @override
  _TriviaSplashScreen createState() => _TriviaSplashScreen();
}

class _TriviaSplashScreen extends State<TkSplashScreen> {
  @override
  void initState() {
    super.initState();
    // _popOffStackSplashScreen();
  }

  // Future _popOffStackSplashScreen() {
  //   return Future.delayed(const Duration(seconds: 5), () {
  //     Navigator.of(context).pushReplacement(
  //         PreviewSlideRoute(preview: const EgoOnBoarding(), duration: 650));
  //   });
  // }

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                ImageStore.backgroundImage,
                fit: BoxFit.cover,
                width: deviceWidth(context) / 1.7,
              ),
              UIHelper.verticalSpaceMedium,
              Text(
                "Discover New People",
                style: kLargeTextStyle.copyWith(
                    color: kTriviaGreen,
                    letterSpacing: 2.8,
                    fontSize: screenAwareSize(36, context)),
              ),
              UIHelper.verticalSpaceMedium,
              Container(
                alignment: Alignment.center,
                width: deviceWidth(context) / 1.6,
                child: Text(
                  "Lorem ipsum fhuhrbugrgbubgebubeugbb grehiurhgbuger erubgr8hgher8h",
                  textAlign: TextAlign.center,
                  style: kLargeTextStyle.copyWith(
                      color: kTriviaGreen.withOpacity(0.8),
                      fontWeight: FontWeight.w100,
                      letterSpacing: 2.8,
                      fontSize: screenAwareSize(19, context)),
                ),
              ),
              UIHelper.verticalSpaceLarge,
              TkB(
                buttonText: "GET STARTED",
                buttonColor: kTriviaGreen,
                buttonHeight: screenAwareSize(90, context),
                buttonWidth: deviceWidth(context) / 1.2,
                onPressed: () {
                  Navigator.push(
                      context,
                      PreviewSlideRoute(
                          preview: const TkSignUp(), duration: 1));
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
