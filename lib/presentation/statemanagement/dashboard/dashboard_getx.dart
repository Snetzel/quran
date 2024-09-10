import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/presentation/pages/home/bookmark_page.dart';
import 'package:quran/presentation/pages/home/home_page.dart';
import 'package:quran/presentation/pages/home/mosque_page.dart';

class DashboardController extends GetxController {
  var nIndex = 1.obs;

  List vaPage = <Widget>[
    const BookmarkPage(),
    HomePage(),
    const MosquePage(),
  ];

  void onTap(int index) {
    nIndex.value = index;
  }
}
