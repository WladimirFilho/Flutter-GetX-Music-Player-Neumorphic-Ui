import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:music_player_ui/music/play/play_control_controller.dart';

class PlayControlBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PlayControlController(audioPlayers: AudioPlayer()));
  }
}
