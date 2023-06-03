import 'package:flutter/material.dart';

class TextStyleExtention extends ThemeExtension<TextStyleExtention> {
  final TextStyle? header;
  final TextStyle? musicTitle;
  final TextStyle? authorTitle;

  TextStyleExtention({
    required this.header,
    required this.musicTitle,
    required this.authorTitle,
  });

  @override
  ThemeExtension<TextStyleExtention> copyWith({
    TextStyle? header,
    TextStyle? musicTitle,
    TextStyle? authorTitle,
  }) {
    return TextStyleExtention(
      header: header ?? this.header,
      musicTitle: musicTitle ?? this.header,
      authorTitle: authorTitle ?? this.authorTitle,
    );
  }

  @override
  ThemeExtension<TextStyleExtention> lerp(
    TextStyleExtention other,
    double t,
  ) {
    if (other is! ThemeExtension) {
      return this;
    }
    return TextStyleExtention(
      header: TextStyle.lerp(header, other.header, t),
      musicTitle: TextStyle.lerp(musicTitle, other.musicTitle, t),
      authorTitle: TextStyle.lerp(authorTitle, other.musicTitle, t),
    );
  }
}
