// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class MusicListController extends GetxController {
  final http.Client httpClient;

  MusicListController({
    required this.httpClient,
  });

  Future<void> fetchMusicList() async {
    final url = Uri.http('localhost:8080', 'genres');
    final response = await http.get(url);
    print(response.body);
  }
}
