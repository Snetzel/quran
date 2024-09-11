import 'package:get/get.dart';
import 'package:quran/component/function/main_function.dart';
import 'package:quran/data/model/surah_detail_model.dart';

class SurahDetailController extends GetxController {
  Rx<List<SurahDetailModel>> vaSurahDetail = Rx<List<SurahDetailModel>>([]);

  RxInt nNomorSurah = 1.obs;

  init() {
    C.getSurahDetail(nNomorSurah.value).then((value) {
      vaSurahDetail.value.clear();
      Map<String, dynamic> vaData = value.data['data'];
      vaSurahDetail.value.add(SurahDetailModel.fromMap(vaData));
      vaSurahDetail.refresh();
    });
  }
}
