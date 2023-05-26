import 'package:flutter/material.dart';
import 'package:music_player_ui/components/neu_box.dart';
import 'package:music_player_ui/contants_variables/colors/k_colors.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mainTheme = Theme.of(context).extension<KColors>()!;

    return Scaffold(
      backgroundColor: mainTheme.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // back button and menu button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 60,
                    width: 60,
                    child: NeuBox(
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  const Text('P L A Y L I S T'),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/music_list_page');
                      },
                      child: const NeuBox(
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),

              // cover art, artist name, song name
              SizedBox(
                child: NeuBox(
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
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.grey[700],
                                  ),
                                ),
                                const Text(
                                  'Birdie',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
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

              // start time, shuffle buttton, repeat button, end time
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
                  const Expanded(
                    child: SizedBox(
                      height: 100,
                      child: NeuBox(
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
                        child: InkWell(
                          highlightColor: Colors.red,
                          onTap: () {},
                          child: const NeuBox(
                            child: Icon(
                              Icons.play_arrow,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: GestureDetector(
                        onTap: () {},
                        child: const NeuBox(
                          child: Icon(
                            Icons.skip_next,
                            size: 40,
                          ),
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
