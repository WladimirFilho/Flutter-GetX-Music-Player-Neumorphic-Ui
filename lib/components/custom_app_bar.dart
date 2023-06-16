import 'package:flutter/material.dart';
import 'package:music_player_ui/contants_variables/text_styles/text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    this.actionWidgetAppbar,
    this.trailingWidgetAppbar,
  }) : super(key: key);

  final String title;
  final Widget? actionWidgetAppbar;
  final Widget? trailingWidgetAppbar;

  @override
  Widget build(BuildContext context) {
    var textStyleTheme = Theme.of(context).extension<TextStyleExtention>()!;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: actionWidgetAppbar,
            ),
            Text(title, style: textStyleTheme.header),
            SizedBox(
              height: 60,
              width: 60,
              child: trailingWidgetAppbar,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 80);
}
