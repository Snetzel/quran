import 'package:get/get.dart';
import 'package:quran/component/function/main_function.dart';
import 'package:quran/data/model/surah_model.dart';

class SurahController extends GetxController {
  Rx<List<SurahModel>> surah = Rx<List<SurahModel>>([]);

  @override
  void onInit() {
    init();
    super.onInit();
  }

  init() {
    C.getSurah().then((value) {
      List vaData = value.data['data'];
      surah.value = surahModelFromMap(vaData);
    });
  }
}
