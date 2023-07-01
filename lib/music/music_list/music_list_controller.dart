// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:music_player_ui/model/music_model.dart';

class MusicListController extends GetxController {
  final http.Client httpClient;

  @override
  void onInit() {
    super.onInit();
    fetchMusicList();
  }

  MusicListController({
    required this.httpClient,
  });

  final musicModels = [].obs;
  final isLoading = false.obs;

  // Function: http package
  // Set is loading to true
  // To fetch the API server information
  // Serialize the information
  // Transform into a MusicModel
  Future<void> fetchMusicList() async {
    isLoading.value = true;
    final url = Uri.http('localhost:8080', 'genres');
    final response = await http.get(url);
    final List<dynamic> dataJson = jsonDecode(response.body);
    for (dynamic json in dataJson) {
      final musicItem = MusicModel.fromJson(json);
      musicModels.add(musicItem);
    }

    await Future.delayed(const Duration(seconds: 10));
    isLoading.value = false;
  }
}
