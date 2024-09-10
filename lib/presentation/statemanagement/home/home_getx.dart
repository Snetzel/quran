import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void onInit() {
    controller = TabController(length: 4, vsync: this);
    super.onInit();
  }
}
