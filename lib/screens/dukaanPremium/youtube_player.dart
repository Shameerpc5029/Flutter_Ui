import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Youtube extends StatelessWidget {
  Youtube({Key? key}) : super(key: key);
  final _youtubeController = YoutubePlayerController(
    flags: const YoutubePlayerFlags(
      controlsVisibleAtStart: true,
      autoPlay: false,
    ),
    initialVideoId: 'FQdnnJ0Sdcg',
  );
  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      progressIndicatorColor: Colors.red,
      controller: _youtubeController,
      controlsTimeOut: const Duration(seconds: 3),
      showVideoProgressIndicator: true,
    );
  }
}
