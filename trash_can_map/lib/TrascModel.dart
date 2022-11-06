import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'dart:io'; // 파일
import 'package:path_provider/path_provider.dart';

class TrashModel {
  late String id;
  late double latitude; // x좌표
  late double longitude; //y좌표
  late String posDescription; // 설명
  String? registeredTime; // 등록일시(date 필드)
  Image? image; // 이미지(파일필드)

  String? tempPath;

  TrashModel(String id, double latitude, double longitude,
       String posDescription,
      {String? registeredTime, Image? image}) {
    this.id = id;
    this.latitude = latitude;
    this.longitude = longitude;
    this.registeredTime = registeredTime;
    this.posDescription = posDescription;
    if (image == null) {
      getTempPath().then((value) {
        this.image = Image.asset('lib/sub/imgNotLoad.png');
      });
    } else
      this.image = image;
  }

  Future<String> getTempPath() async {
    Directory tempDir = await getLibraryDirectory();
    tempPath = tempDir.path;
    return tempDir.path;
  }
}
