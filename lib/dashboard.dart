import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quran/presentation/statemanagement/dashboard/dashboard_getx.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

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
            BottomNavigationBarItem(
              label: '',
              icon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ctrl.nIndex.value == 0 ? Colors.deepPurple[900] : Colors.transparent,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Iconsax.bookmark,
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ctrl.nIndex.value == 1 ? Colors.deepPurple[900] : Colors.transparent,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Iconsax.home,
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '  ',
              icon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ctrl.nIndex.value == 2 ? Colors.deepPurple[900] : Colors.transparent,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.mosque,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
