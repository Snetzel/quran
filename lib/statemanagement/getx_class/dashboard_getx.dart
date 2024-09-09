import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/statemanagement/pages/bookmark_page.dart';
import 'package:quran/statemanagement/pages/home_page.dart';
import 'package:quran/statemanagement/pages/mosque_page.dart';

class DashboardController extends GetxController {
  var nIndex = 1.obs;

  List vaPage = <Widget>[
    const BookmarkPage(),
    const HomePage(),
    const MosquePage(),
  ];

  void onTap(int index) {
    nIndex.value = index;
  }
}
