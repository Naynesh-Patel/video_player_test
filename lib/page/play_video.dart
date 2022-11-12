import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_test/controller/video_controller.dart';

import '../controller/video_controller.dart';

class PlayVideo extends StatefulWidget {

  final VideoPlayerController videoPlayerController;
  const PlayVideo(this.videoPlayerController, {Key? key}) : super(key: key);

  @override
  State<PlayVideo> createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo> {

  final VideoController controller=Get.find();
  @override
  void initState() {
    super.initState();
    controller.isVideoPlaying.value=false;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: widget.videoPlayerController.value.aspectRatio,
            child: VideoPlayer(widget.videoPlayerController),
          ),
          Center(
            child: Obx(()=>InkWell(
              onTap: (){
                if(widget.videoPlayerController.value.isPlaying) {
                  controller.isVideoPlaying.value=false;
                  widget.videoPlayerController.pause();
                }else{
                  controller.isVideoPlaying.value=true;
                  widget.videoPlayerController.play();
                }
              },
              child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Icon(controller.isVideoPlaying.value?Icons.pause:Icons.play_arrow)),
            )),
          )
        ],
      ),
    );
  }


  @override
  void dispose() {
    super.dispose();
    widget.videoPlayerController.dispose();
  }
}
