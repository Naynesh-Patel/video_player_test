import 'package:get/get.dart';
import 'package:video_player_test/controller/video_controller.dart';

class BindingController implements Bindings{

  @override
  void dependencies() {
      Get.lazyPut<VideoController>(() =>VideoController(),fenix: true);
  }


}