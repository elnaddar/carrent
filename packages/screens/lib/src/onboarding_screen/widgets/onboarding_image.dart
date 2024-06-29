import 'package:flutter/material.dart';
import 'package:utils/utils.dart';

/// A widget that displays an onboarding image with specified maximum dimensions.
class OnboardingImage extends StatelessWidget {
  /// Creates a new instance of [OnboardingImage].
  ///
  /// [imgMaxWidth] and [imgMaxHeight] are required.
  const OnboardingImage({
    required this.imgMaxWidth,
    required this.imgMaxHeight,
    super.key,
  });

  /// The maximum width of the image.
  final double imgMaxWidth;

  /// The maximum height of the image.
  final double imgMaxHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.topStart,
      height: context.mediaQuery.size.shortestSide,
      constraints: BoxConstraints(
        maxWidth: imgMaxWidth,
        maxHeight: imgMaxHeight,
      ),
      child: const Image(
        height: 567,
        width: 374,
        alignment: AlignmentDirectional.topStart,
        image: AssetImage(
          'assets/onboarding_screen/onboarding.png',
          package: 'screens',
        ),
      ),
    );
  }
}
