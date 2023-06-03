import 'package:flutter/material.dart';

class ColorsExtension extends ThemeExtension<ColorsExtension> {
  final Color? backgroundColor;
  final Color? musicListBackgroundColor;
  final Color? menuBackgroundColor;
  final Color? selectedColor;
  final Color? darkColor;

  ColorsExtension({
    required this.backgroundColor,
    required this.musicListBackgroundColor,
    required this.menuBackgroundColor,
    required this.selectedColor,
    required this.darkColor,
  });

  @override
  ColorsExtension copyWith({
    Color? backgroundColor,
    Color? musicListBackgroundColor,
    Color? menuBackgroundColor,
    Color? selectedColor,
    Color? darkColor,
  }) {
    return ColorsExtension(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      musicListBackgroundColor: musicListBackgroundColor ?? this.musicListBackgroundColor,
      menuBackgroundColor: menuBackgroundColor ?? this.menuBackgroundColor,
      selectedColor: selectedColor ?? this.selectedColor,
      darkColor: darkColor ?? this.darkColor,
    );
  }

  @override
  ThemeExtension<ColorsExtension> lerp(ColorsExtension other, double t) {
    if (other is! ColorsExtension) {
      return this;
    }
    return ColorsExtension(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      musicListBackgroundColor:
          Color.lerp(musicListBackgroundColor, other.musicListBackgroundColor, t),
      menuBackgroundColor: Color.lerp(menuBackgroundColor, other.menuBackgroundColor, t),
      selectedColor: Color.lerp(selectedColor, other.selectedColor, t),
      darkColor: Color.lerp(darkColor, other.darkColor, t),
    );
  }
}
