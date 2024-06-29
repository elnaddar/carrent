import 'package:flutter/material.dart';

/// Extension on [BuildContext] to easily access theme and media query data.
extension EasyBuildContext on BuildContext {
  /// Provides easy access to the [ThemeData] of the current [BuildContext].
  ThemeData get theme => Theme.of(this);

  /// Provides easy access to the [MediaQueryData] of the current [BuildContext].
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}
