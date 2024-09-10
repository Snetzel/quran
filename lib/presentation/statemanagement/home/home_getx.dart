import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/component/function/main_function.dart';
import 'package:quran/data/model/surah_model.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin {
  TabController? controller;
  Rx<List<SurahModel>> surah = Rx<List<SurahModel>>([]);

  @override
  void onInit() {
    controller = TabController(length: 4, vsync: this);

    init();
    super.onInit();
  }

  init() {
    C.getSurah().then((value) {
      List vaData = value.data['data'];
      // print('--$vaData');
      surah.value = surahModelFromMap(vaData);
      print('--Surah = ${surah.value.first.nama}');
    });
  }
}
