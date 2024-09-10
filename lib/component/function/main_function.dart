import 'package:dio/dio.dart';
import 'package:quran/data/constant/config.dart';

part 'dio.dart';

MainFunction get C => MainFunction.instance;

class MainFunction with DioComponent {
  static final MainFunction instance = MainFunction._internal();
  MainFunction._internal();
}
