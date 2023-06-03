import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player_ui/components/custom_app_bar.dart';
import 'package:music_player_ui/components/list_component.dart';
import 'package:music_player_ui/contants_variables/colors/colors.dart';

import '../../components/neu_box.dart';

class MusicListPage extends StatelessWidget {
  const MusicListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colorTheme = Theme.of(context).extension<ColorsExtension>()!;
    return Scaffold(
      backgroundColor: colorTheme.backgroundColor,
      appBar: CustomAppBar(
        actionWidgetAppbar: NeuBox(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back),
        ),
        title: 'YOUR LIST',
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(child: ListComponent()),
        ],
      ),
    );
  }
}
