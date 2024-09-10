import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:quran/data/constant/config.dart';
import 'package:quran/data/model/surah_model.dart';

Future<List<dynamic>> dioQuran() async {
  final response = await Dio().get(AppConfig.cUrl);
  if (response.statusCode == 200) {
    print('Great');
    return response.data['data'];
  } else {
    throw ('left');
  }
}
