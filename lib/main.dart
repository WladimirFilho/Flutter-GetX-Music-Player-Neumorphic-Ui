import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player_ui/contants_variables/colors/colors.dart';
import 'package:music_player_ui/contants_variables/text_styles/text_styles.dart';
import 'package:music_player_ui/music/music_module.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        ...MusicModule().routers,
      ],
      debugShowCheckedModeBanner: false,
      title: 'Music Player UI',
      theme: ThemeData(
        useMaterial3: true,
      ).copyWith(
        extensions: [
          ColorsExtension(
            backgroundColor: Colors.grey[300],
            musicListBackgroundColor: Colors.grey[300],
            menuBackgroundColor: Colors.grey[300],
            selectedColor: Colors.grey[300],
            darkColor: Colors.grey[300],
          ),
          TextStyleExtention(
            header: const TextStyle(
              fontSize: 14,
              letterSpacing: 10,
            ),
            musicTitle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.grey[700],
            ),
            authorTitle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
