import 'package:flutter/material.dart';

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
        // Container(
        //   decoration: BoxDecoration(
        //       image: DecorationImage(
        //     image: AssetImage(
        //       ImageStore.covidBackgroundImage,
        //     ),
        //     fit: BoxFit.cover,
        //   )),
        //   width: deviceWidth(context),
        //   height: deviceHeight(context),
        // ),
        // Container(
        //   color: kDarkPurple.withOpacity(0.82),
        //   width: deviceWidth(context),
        //   height: deviceHeight(context),
        // ),
        // Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Cv19LogoText(
        //         logoFontSize: 100,
        //       ),
        //     ],
        //   ),
        // )
      ],
    );
  }
}
