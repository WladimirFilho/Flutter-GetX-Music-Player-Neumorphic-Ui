import 'package:flutter/material.dart';
import 'package:music_player_ui/contants_variables/colors/colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colorTheme = Theme.of(context).extension<ColorsExtension>()!;

    return Drawer(
      backgroundColor: colorTheme.darkColor,
      child: const Column(
        children: [
          DrawerHeader(
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.black,
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Favorites',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
