import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/component/function/main_widget.dart';
import 'package:quran/presentation/statemanagement/dashboard/dashboard_getx.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key}); //

  @override
  Widget build(BuildContext context) {
    DashboardController ctrl = Get.put(DashboardController());
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => ctrl.vaPage[ctrl.nIndex.value],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          currentIndex: ctrl.nIndex.value,
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.deepPurple[900],
          onTap: (index) => ctrl.onTap(index),
          items: [
            W.bottonNavBarItemDashboard(
              child: const Icon(
                Icons.bookmark_outline,
              ),
              indexValue: ctrl.nIndex.value,
              indexNavBar: 0,
            ),
            W.bottonNavBarItemDashboard(
              child: const Icon(
                Icons.home_outlined,
              ),
              indexValue: ctrl.nIndex.value,
              indexNavBar: 1,
            ),
            W.bottonNavBarItemDashboard(
              child: const Icon(
                Icons.mosque_outlined,
              ),
              indexValue: ctrl.nIndex.value,
              indexNavBar: 2,
            ),
          ],
        ),
      ),
    );
  }
}
