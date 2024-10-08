import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/data/model/surah_model.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TabController? controller;
  Rx<List<SurahModel>> surah = Rx<List<SurahModel>>([]);

  @override
  void onInit() {
    controller = TabController(length: 4, vsync: this);
    super.onInit();
  }
}
