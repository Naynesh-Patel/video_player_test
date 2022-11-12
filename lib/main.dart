import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player_test/controller/binding_controller.dart';
import 'package:video_player_test/page/video_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const VideoList(),
      initialBinding: BindingController(),
    );
  }
}
