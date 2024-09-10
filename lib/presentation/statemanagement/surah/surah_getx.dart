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

  List<IndexData> vaData = [
    IndexData('Al-Fatiah', 'MECCAN - 7 Verses', 'الفاتحة'),
    IndexData('Al-Baqarah', 'MEDINIAN - 286 VERSES', 'البقرة'),
    IndexData("Ali'imran", 'MECCAN - 200 VERSES', 'علي عمران'),
    IndexData('An-Nisa', 'MECCAN - 176 VERSES', 'النساء'),
  ];
}

class IndexData {
  final String name;
  final String desc;
  final String surah;

  IndexData(
    this.name,
    this.desc,
    this.surah,
  );
}
