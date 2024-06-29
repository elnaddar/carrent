import 'package:flutter/material.dart';

/// A widget that displays text alongside an asset icon.
///
/// The icon is specified by [assetPath], and the text is specified by [text].
class TextWithAssetIcon extends StatelessWidget {
  /// Creates a new instance of [TextWithAssetIcon].
  ///
  /// Both [text] and [assetPath] are required.
  const TextWithAssetIcon({
    required this.text,
    required this.assetPath,
    super.key,
  });

  /// The text to display next to the icon.
  final String text;

  /// The path to the asset icon.
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image(
          image: AssetImage(
            assetPath,
            package: 'car_card',
          ),
        ),
        Text(' $text'),
      ],
    );
  }
}
