import 'package:flutter/material.dart';
import 'package:music_player_ui/contants_variables/colors/k_colors.dart';
import 'package:music_player_ui/home_page/home_page_view.dart';
import 'package:music_player_ui/music_list/music_llist_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/music_list_page': (context) => const MusicListPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Music Player UI',
      theme: ThemeData(
        useMaterial3: true,
      ).copyWith(
        extensions: [
          KColors(
            backgroundColor: Colors.grey[300],
            musicListBackgroundColor: Colors.grey[300],
            menuBackgroundColor: Colors.grey[300],
            selectedColor: Colors.grey[300],
          )
        ],
      ),
      home: const HomePageView(),
    );
  }
}
