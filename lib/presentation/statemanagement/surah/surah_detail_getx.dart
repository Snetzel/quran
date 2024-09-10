import 'package:get/get.dart';
import 'package:quran/component/function/main_function.dart';
import 'package:quran/data/model/surah_detail_model.dart';

class SurahDetailController extends GetxController {
  RxMap surahDetail = {}.obs;

  RxInt nNomorSurah = 1.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  init() {
    C.getSurahDetail(nNomorSurah.value).then((value) {
      var vaData = value.data['data'];
      surahDetail.value = vaData;
    });
  }
}
