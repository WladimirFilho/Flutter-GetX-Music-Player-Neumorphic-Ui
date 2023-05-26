import 'package:flutter/material.dart';

class KColors extends ThemeExtension<KColors> {
  final Color? backgroundColor;
  final Color? musicListBackgroundColor;
  final Color? menuBackgroundColor;
  final Color? selectedColor;

  KColors({
    required this.backgroundColor,
    required this.musicListBackgroundColor,
    required this.menuBackgroundColor,
    required this.selectedColor,
  });

  @override
  KColors copyWith({
    Color? backgroundColor,
    Color? musicListBackgroundColor,
    Color? menuBackgroundColor,
    Color? selectedColor,
  }) {
    return KColors(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      musicListBackgroundColor: musicListBackgroundColor ?? this.musicListBackgroundColor,
      menuBackgroundColor: menuBackgroundColor ?? this.menuBackgroundColor,
      selectedColor: selectedColor ?? this.selectedColor,
    );
  }

  @override
  ThemeExtension<KColors> lerp(KColors other, double t) {
    if (other is! KColors) {
      return this;
    }
    return KColors(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      musicListBackgroundColor:
          Color.lerp(musicListBackgroundColor, other.musicListBackgroundColor, t),
      menuBackgroundColor: Color.lerp(menuBackgroundColor, other.menuBackgroundColor, t),
      selectedColor: Color.lerp(selectedColor, other.selectedColor, t),
    );
  }
}
