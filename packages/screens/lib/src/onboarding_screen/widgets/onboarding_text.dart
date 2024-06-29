import 'package:flutter/material.dart';
import 'package:utils/utils.dart';

/// A widget that displays onboarding text with customizable spacing and width.
class OnboardingText extends StatelessWidget {
  /// Creates a new instance of [OnboardingText].
  ///
  /// [columnWidth] and [space] are required.
  const OnboardingText({
    required this.columnWidth,
    required this.space,
    super.key,
  });

  /// The width of the column containing the text.
  final double columnWidth;

  /// The spacing widget between text elements.
  final SizedBox space;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: columnWidth,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Premium cars.\nEnjoy the luxury',
              style: context.theme.textTheme.headlineLarge!.copyWith(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            space,
            Text(
              'Premium and prestige car daily rental.\n'
              'Experience the thrill at a lower price.',
              style: context.theme.textTheme.bodyMedium!.copyWith(
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: 218,
              height: 42,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  textStyle: context.theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
                child: const Text("Let's Go"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
