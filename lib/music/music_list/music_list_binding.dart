import 'package:get/get.dart';
import 'package:music_player_ui/music/music_list/music_list_controller.dart';

class MusicListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MusicListController(httpClient: Get.find()));
  }
}
