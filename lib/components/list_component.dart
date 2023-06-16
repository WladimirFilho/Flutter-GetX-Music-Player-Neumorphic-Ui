import 'package:flutter/material.dart';
import 'package:music_player_ui/components/neu_box.dart';
import 'package:music_player_ui/contants_variables/text_styles/text_styles.dart';

class ListComponent extends StatelessWidget {
  const ListComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyleTheme = Theme.of(context).extension<TextStyleExtention>()!;

    return ListView.builder(
      // ignore: avoid_types_as_parameter_names
      itemBuilder: (context, int) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 8,
        ),
        child: NeuBox(
          onTap: () {},
          padding: 4,
          child: ListTile(
            leading: const Icon(
              Icons.music_note,
              color: Colors.black,
            ),
            title: Text(
              'Title',
              style: textStyleTheme.musicTitle,
            ),
            subtitle: Text(
              'subTitle',
              style: textStyleTheme.authorTitle,
            ),
            trailing: const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 24,
            ),
          ),
        ),
      ),
      itemCount: 5,
    );
  }
}
