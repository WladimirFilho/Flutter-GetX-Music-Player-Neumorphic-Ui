import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player_ui/components/custom_app_bar.dart';
import 'package:music_player_ui/components/neu_box.dart';
import 'package:music_player_ui/contants_variables/colors/colors.dart';
import 'package:music_player_ui/contants_variables/text_styles/text_styles.dart';
import 'package:music_player_ui/music/components/drawer.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PlayControlPage extends StatelessWidget {
  PlayControlPage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    var colorTheme = Theme.of(context).extension<ColorsExtension>()!;
    var textStyleTheme = Theme.of(context).extension<TextStyleExtention>()!;

    return Scaffold(
      key: _key,
      drawer: CustomDrawer(),
      appBar: CustomAppBar(
        title: 'PLAYLIST',
        actionWidgetAppbar: NeuBox(
          onTap: () {
            _key.currentState!.openDrawer();
          },
          child: Icon(Icons.menu),
        ),
        trailingWidgetAppbar: NeuBox(
          onTap: () {
            Get.toNamed('/musicList');
          },
          child: Icon(Icons.playlist_play),
        ),
      ),
      backgroundColor: colorTheme.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 8),

              // cover art, artist name, song name
              SizedBox(
                child: NeuBox(
                  onTap: () {},
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/cover.jpg',
                        ),
                      ),
                      const SizedBox(height: 7),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kota The Friend',
                                  style: textStyleTheme.musicTitle,
                                ),
                                Text(
                                  'Birdie',
                                  style: textStyleTheme.authorTitle,
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 32,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              // start time, shuffle button, repeat button, end time
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('0,00'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('4,40'),
                ],
              ),
              const SizedBox(
                height: 25,
              ),

              // progress bar
              NeuBox(
                onTap: () {},
                child: LinearPercentIndicator(
                  backgroundColor: Colors.transparent,
                  barRadius: const Radius.circular(8),
                  lineHeight: 10,
                  percent: 0.5,
                  progressColor: Colors.green,
                ),
              ),

              const SizedBox(height: 25),

              // previews song, pause and play, skip next song
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: NeuBox(
                        onTap: () {},
                        padding: 10,
                        child: Icon(
                          Icons.skip_previous,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        height: 100,
                        child: NeuBox(
                          onTap: () async {
                            await player.play(
                              AssetSource('music/mixkit-woodfire-by-the-lake-128.mp3'),
                            );
                          },
                          child: const Icon(
                            Icons.play_arrow,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: NeuBox(
                        onTap: () {},
                        child: const Icon(
                          Icons.skip_next,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
