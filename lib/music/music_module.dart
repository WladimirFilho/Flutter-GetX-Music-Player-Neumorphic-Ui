import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:music_player_ui/application/module/module.dart';
import 'package:music_player_ui/music/music_list/music_list_binding.dart';
import 'package:music_player_ui/music/music_list/music_list_page.dart';
import 'package:music_player_ui/music/play/play_control_binding.dart';
import 'package:music_player_ui/music/play/play_control_page.dart';

class MusicModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/',
      page: () => PlayControlPage(),
      binding: PlayControlBinding(),
    ),
    GetPage(
      name: '/musicList',
      page: () => const MusicListPage(),
      binding: MusicListBinding(),
    ),
  ];
}
