import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Container(
              constraints: const BoxConstraints(maxWidth: 375, maxHeight: 567),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "images/onboarding.png",
                    package: "onboarding",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
