import 'package:get/get.dart';

class SurahController extends GetxController {
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
