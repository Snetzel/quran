import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/data/constant/config.dart';
import 'package:quran/data/constant/image.dart';
import 'package:quran/component/main_widget.dart';
import 'package:quran/dashboard.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            W.textBody(
              cText: AppConfig.cAppName,
              textColor: Colors.black,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            W.paddingHeight16(),
            W.textBody(
              cText: 'Learn Quran and\nRecite once everyday',
              textAlign: TextAlign.center,
              fontSize: 20,
              textColor: Colors.black,
            ),
            W.paddingHeight16(),
            W.paddingHeight16(),
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 350,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: W.imageAsset(
                    imagePath: MyImage.quran,
                    scale: 3,
                  ),
                ),
                Positioned(
                  bottom: -30,
                  child: InkWell(
                    onTap: () {
                      Get.off(const DashBoardPage());
                    },
                    child: Container(
                      height: 60,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.orange[300],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: W.textBody(
                          cText: 'Get Started',
                          textColor: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
