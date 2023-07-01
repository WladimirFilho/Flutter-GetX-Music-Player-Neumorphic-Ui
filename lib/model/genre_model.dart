// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:music_player_ui/model/music_model.dart';

class GenreModel {
  final String img;
  final String title;
  final String search;
  final List<MusicModel> musics;

  GenreModel({
    required this.img,
    required this.title,
    required this.search,
    required this.musics,
  });

  factory GenreModel.fromJson(Map<String, dynamic> json) {
    return GenreModel(
      img: json['img'] ?? "",
      title: json['title'] ?? "",
      search: json['search'] ?? "",
      musics: ((json['musics'] ?? <Map<String, dynamic>>[])
              as List<Map<String, dynamic>>)
          .map((e) {
        return MusicModel.fromJson(e);
      }).toList(),
    );
  }
}
