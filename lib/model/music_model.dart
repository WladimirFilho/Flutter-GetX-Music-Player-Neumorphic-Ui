// ignore_for_file: public_member_api_docs, sort_constructors_first
class MusicModel {
  final String img;
  final String title;
  final String path;
  final int duration;

  MusicModel({
    required this.img,
    required this.title,
    required this.path,
    required this.duration,
  });

  factory MusicModel.fromJson(Map<String, dynamic> json) {
    return MusicModel(
      img: json['img'] ?? '',
      title: json['title'] ?? '',
      path: json['path'] ?? '',
      duration: json['duration'] ?? 0,
    );
  }
}
