import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:video_player/video_player.dart';
import 'package:video_player_test/model/model_video.dart';
import 'package:video_player_test/page/play_video.dart';

class VideoController extends GetxController {
  RxList<ModelVideo> listOfVideo = <ModelVideo>[].obs;
  RxBool isGettingData = false.obs;
  RxBool isVideoPlaying = false.obs;

  @override
  void onInit() {
    super.onInit();
    getVideoList();
  }

  Future<void> getVideoList() async {
    isGettingData.value = true;
    final response = await http.post(
        Uri.parse('https://admin.siinema.com/userApi/home-data-list'),
        body: {
          "id": "184",
          "token": "2y10JYSvr9rxDFQX20w1tZ0Wudqo3NktWFOl3DwJBjCWK5WvgvGdFje",
          "sub_profile_id": "184",
          "device_type": "web",
          "device_token": "123456",
          "login_by": "manual",
          "page_type": "HOME",
          "lat": "19.205661",
          "lag": "72.8160861",
        });

    if (response.statusCode == 200) {
      var responseData = json.decode(response.body);
      listOfVideo.addAll((responseData['data']['latest_video'] as List)
          .map((data) => ModelVideo.fromJson(data as Map<String, dynamic>))
          .toList());
      isGettingData.value = false;
    } else {
      isGettingData.value = false;
      throw Exception('Failed to get data');
    }
  }

  void onTapVideo(index) {
    VideoPlayerController videoPlayerController =
        VideoPlayerController.network(listOfVideo[index].video ?? "")
          ..initialize().then((_) {});
    // Get.to(PlayVideo(videoPlayerController));
    Get.to(PlayVideo(listOfVideo[index].video??""));
  }
}
