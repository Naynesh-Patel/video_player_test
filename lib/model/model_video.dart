// To parse this JSON data, do
//
//     final modelVideo = modelVideoFromJson(jsonString);

import 'dart:convert';

List<ModelVideo> modelVideoFromJson(String str) => List<ModelVideo>.from(json.decode(str).map((x) => ModelVideo.fromJson(x)));

String modelVideoToJson(List<ModelVideo> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ModelVideo {
  ModelVideo({
    this.casts,
    this.adminVideoId,
    this.adminUniqueId,
    this.id,
    this.categoryId,
    this.subCategoryId,
    this.genreId,
    this.videoType,
    this.title,
    this.description,
    required this.defaultImage,
    this.upcommigImage,
    this.mobileImage,
    this.bannerImage,
    this.isPayPerView,
    this.mobileBannerImage,
    this.publishTime,
    this.age,
    this.details,
    this.video,
    this.videoSubtitle,
    this.videoSubtitleVtt,
    this.duration,
    this.trailerVideo,
    this.trailerSubtitle,
    this.trailerSubtitleVtt,
    this.trailerDuration,
    this.ratings,
    this.reviews,
    this.videoResolutions,
    this.trailerVideoResolutions,
    this.videoResizePath,
    this.trailerResizePath,
    this.watchCount,
    this.typeOfUser,
    this.typeOfSubscription,
    this.ppvAmount,
    this.amount,
    this.videoUploadType,
    this.position,
    this.isKidsVideo,
    this.downloadStatus,
    this.playerJson,
    this.subCatName,
    this.hlsMainVideo,
    this.popularType,
    this.categoryName,
    this.color,
  });

  String? casts;
  int? adminVideoId;
  String? adminUniqueId;
  int? id;
  int? categoryId;
  int? subCategoryId;
  int? genreId;
  int? videoType;
  String? title;
  String? description;
  String defaultImage="https://admin.siinema.com/uploads/images/video_44_001.jpeg";
  String? upcommigImage;
  String? mobileImage;
  String? bannerImage;
  int? isPayPerView;
  String? mobileBannerImage;
  DateTime? publishTime;
  String? age;
  String? details;
  String? video;
  String? videoSubtitle;
  String? videoSubtitleVtt;
  String? duration;
  String? trailerVideo;
  String? trailerSubtitle;
  String? trailerSubtitleVtt;
  String? trailerDuration;
  String? ratings;
  String? reviews;
  String? videoResolutions;
  String? trailerVideoResolutions;
  String? videoResizePath;
  dynamic trailerResizePath;
  int? watchCount;
  int? typeOfUser;
  int? typeOfSubscription;
  int? ppvAmount;
  int? amount;
  int? videoUploadType;
  int? position;
  int? isKidsVideo;
  int? downloadStatus;
  String? playerJson;
  String? subCatName;
  String? hlsMainVideo;
  dynamic popularType;
  String? categoryName;
  String? color;

  factory ModelVideo.fromJson(Map<String, dynamic> json) => ModelVideo(
    casts: json["casts"],
    adminVideoId: json["admin_video_id"],
    adminUniqueId: json["admin_unique_id"],
    id: json["id"],
    categoryId: json["category_id"],
    subCategoryId: json["sub_category_id"],
    genreId: json["genre_id"],
    videoType: json["video_type"],
    title: json["title"],
    description: json["description"],
    defaultImage: json["default_image"],
    upcommigImage: json["upcommig_image"],
    mobileImage: json["mobile_image"],
    bannerImage: json["banner_image"],
    isPayPerView: json["is_pay_per_view"],
    mobileBannerImage: json["mobile_banner_image"],
    publishTime: DateTime.parse(json["publish_time"]),
    age: json["age"],
    details: json["details"],
    video: json["video"],
    videoSubtitle: json["video_subtitle"],
    videoSubtitleVtt: json["video_subtitle_vtt"],
    duration: json["duration"],
    trailerVideo: json["trailer_video"],
    trailerSubtitle: json["trailer_subtitle"],
    trailerSubtitleVtt: json["trailer_subtitle_vtt"],
    trailerDuration: json["trailer_duration"],
    ratings: json["ratings"],
    reviews: json["reviews"],
    videoResolutions: json["video_resolutions"],
    trailerVideoResolutions: json["trailer_video_resolutions"],
    videoResizePath: json["video_resize_path"],
    trailerResizePath: json["trailer_resize_path"],
    watchCount: json["watch_count"],
    typeOfUser: json["type_of_user"],
    typeOfSubscription: json["type_of_subscription"],
    ppvAmount: json["ppv_amount"],
    amount: json["amount"],
    videoUploadType: json["video_upload_type"],
    position: json["position"],
    isKidsVideo: json["is_kids_video"],
    downloadStatus: json["download_status"],
    playerJson: json["player_json"],
    subCatName: json["sub_cat_name"],
    hlsMainVideo: json["hls_main_video"],
    popularType: json["popular_type"],
    categoryName: json["category_name"],
    color: json["color"],
  );

  Map<String, dynamic> toJson() => {
    "casts": casts,
    "admin_video_id": adminVideoId,
    "admin_unique_id": adminUniqueId,
    "id": id,
    "category_id": categoryId,
    "sub_category_id": subCategoryId,
    "genre_id": genreId,
    "video_type": videoType,
    "title": title,
    "description": description,
    "default_image": defaultImage,
    "upcommig_image": upcommigImage,
    "mobile_image": mobileImage,
    "banner_image": bannerImage,
    "is_pay_per_view": isPayPerView,
    "mobile_banner_image": mobileBannerImage,
    "publish_time": publishTime.toString(),
    "age": age,
    "details": details,
    "video": video,
    "video_subtitle": videoSubtitle,
    "video_subtitle_vtt": videoSubtitleVtt,
    "duration": duration,
    "trailer_video": trailerVideo,
    "trailer_subtitle": trailerSubtitle,
    "trailer_subtitle_vtt": trailerSubtitleVtt,
    "trailer_duration": trailerDuration,
    "ratings": ratings,
    "reviews": reviews,
    "video_resolutions": videoResolutions,
    "trailer_video_resolutions": trailerVideoResolutions,
    "video_resize_path": videoResizePath,
    "trailer_resize_path": trailerResizePath,
    "watch_count": watchCount,
    "type_of_user": typeOfUser,
    "type_of_subscription": typeOfSubscription,
    "ppv_amount": ppvAmount,
    "amount": amount,
    "video_upload_type": videoUploadType,
    "position": position,
    "is_kids_video": isKidsVideo,
    "download_status": downloadStatus,
    "player_json": playerJson,
    "sub_cat_name": subCatName,
    "hls_main_video": hlsMainVideo,
    "popular_type": popularType,
    "category_name": categoryName,
    "color": color,
  };
}
