import 'package:flutter_test/flutter_test.dart';
import 'package:music_player_ui/model/genre_model.dart';

void main() {
  test('Can be instantiated without any issues?', () {
    expect(
      GenreModel(img: 'img', title: 'title', search: 'search', musics: []),
      isNotNull,
    );
  });

  test('FromJson returns a GenreModel instance', () {
    final genreModel = GenreModel.fromJson({
      'img': 'img',
      'title': 'title',
      'search': 'search',
      'musics': [
        {
          'img': 'img',
          'title': 'title',
          'path': 'path',
          "duration": 0,
        }
      ],
    });
    expect(
      genreModel,
      isNotNull,
    );
  });

  test('Fallback empty', () {
    final genreModel = GenreModel.fromJson({});
    expect(
      genreModel,
      isNotNull,
    );
  });
}
