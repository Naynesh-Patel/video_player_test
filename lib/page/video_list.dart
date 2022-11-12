import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player_test/controller/video_controller.dart';

class VideoList extends GetView<VideoController> {
  const VideoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Movie List".toUpperCase(),style: const TextStyle(
          letterSpacing: 2.0
        ),),
        centerTitle: true,
      ),
      body: Obx(() {
        if (controller.isGettingData.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (controller.listOfVideo.isEmpty) {
          return const Center(
            child: Text("No video found"),
          );
        }
        return ListView.separated(
          itemCount: controller.listOfVideo.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                controller.onTapVideo(index);
              },
              leading: SizedBox(
                width: 50,
                height: 50,
                child: Image.network(controller.listOfVideo[index].mobileImage??"-"),
              ),
              title: Text(controller.listOfVideo[index].title ?? "Title"),
              subtitle: Text(
                  "Duration : ${controller.listOfVideo[index].trailerDuration}"),
              trailing: InkWell(
                onTap: (){
                  controller.onTapVideo(index);
                },
                  child: const Icon(Icons.play_arrow)),
            );
          },
          separatorBuilder: (context, index) {
            return const VerticalDivider();
          },
        );
      }),
    );
  }
}
