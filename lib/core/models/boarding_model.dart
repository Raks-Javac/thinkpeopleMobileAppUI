
import 'package:thinkpeople/core/utils/constants.dart';

class OnBoardingClass {
  final String? onBoardingText;
  final String? onBoardingImage;
  OnBoardingClass({this.onBoardingText, this.onBoardingImage});

  static List<OnBoardingClass> _getOnBoardingList() {
    return [
      OnBoardingClass(
        onBoardingImage: ImageStore.onBoardingImage1,
        onBoardingText: "Play games on the go for as low as  N50",
      ),
      OnBoardingClass(
        onBoardingImage: ImageStore.onBoardingImage2,
        onBoardingText: "Let your knowledge of sports pay you.",
      ),
      OnBoardingClass(
        onBoardingImage: ImageStore.onBoardingImage3,
        onBoardingText: "Daily games, daily draws, daily wins.",
      ),
    ];
  }

  List<OnBoardingClass> get onBoardingList => _getOnBoardingList();
}
