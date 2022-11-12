import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_test/controller/video_controller.dart';

class PlayVideo extends StatefulWidget {
  final String url;

  const PlayVideo(this.url, {Key? key}) : super(key: key);

  @override
  State<PlayVideo> createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo> {
  final VideoController controller = Get.find();
  late FlickManager flickManager;
  late VideoPlayerController videoPlayerController;

  @override
  void initState() {
    super.initState();
    controller.isVideoPlaying.value = true;
    videoPlayerController = VideoPlayerController.network(widget.url);
    flickManager = FlickManager(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              FlickVideoPlayer(
                flickManager: flickManager,
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    videoPlayerController.dispose();
  }
}
