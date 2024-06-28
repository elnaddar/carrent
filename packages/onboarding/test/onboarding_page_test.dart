import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onboarding/onboarding.dart';

void main() {
  testWidgets(
      'OnboardingPage has a Container with the right constraints and image decoration',
      (WidgetTester tester) async {
    // Build the OnboardingPage widget
    await tester.pumpWidget(
      const MaterialApp(
        home: OnboardingPage(),
      ),
    );

    // Find the Container widget
    final containerFinder = find.byType(Container);
    expect(containerFinder, findsOneWidget);

    // Verify the Container's constraints and decoration
    final containerWidget = tester.widget<Container>(containerFinder);
    expect(containerWidget.constraints!.maxWidth, 375);
    expect(containerWidget.constraints!.maxHeight, 567);

    // Verify the Container's decoration
    final decoration = containerWidget.decoration as BoxDecoration;
    final decorationImage = decoration.image as DecorationImage;
    final assetImage = decorationImage.image as AssetImage;
    expect(assetImage.assetName, 'images/onboarding.png');
    expect(assetImage.package, 'onboarding');
  });
}
