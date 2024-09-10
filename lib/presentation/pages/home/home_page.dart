import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/data/constant/config.dart';
import 'package:quran/data/constant/image.dart';
import 'package:quran/component/main_widget.dart';
import 'package:quran/presentation/pages/home/widget/surah_view.dart';
import 'package:quran/presentation/statemanagement/home/home_getx.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController ctrl = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80,
        title: W.textBody(
          cText: AppConfig.cAppName,
          textColor: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
            size: 24,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 24,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              W.textBody(
                cText: 'Assalammualaikum',
                fontSize: 20,
                textColor: Colors.black,
              ),
              W.paddingHeight5(),
              W.textBody(
                cText: 'Tanvir Ahassab',
                fontSize: 28,
                fontWeight: FontWeight.bold,
                textColor: Colors.black,
              ),
              W.paddingHeight16(),
              W.paddingHeight16(),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.chrome_reader_mode,
                                color: Colors.white,
                              ),
                              W.paddingWidth5(),
                              W.textBody(
                                cText: 'Lost Read',
                                textColor: Colors.white,
                                fontSize: 12,
                              ),
                            ],
                          ),
                          W.paddingHeight16(),
                          W.textBody(
                            cText: 'Al-Fatiah',
                            textColor: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          W.paddingHeight5(),
                          W.paddingHeight5(),
                          W.textBody(
                            cText: 'Ayat No.1',
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: -60,
                    bottom: -110,
                    child: W.imageAsset(
                      imagePath: MyImage.quran,
                      scale: 4,
                    ),
                  ),
                ],
              ),
              W.paddingWidth16(),
              Container(
                height: 60,
                color: Colors.transparent,
                child: TabBar(
                  controller: ctrl.controller,
                  indicatorColor: Colors.deepPurple[900],
                  labelColor: Colors.deepPurple[900],
                  unselectedLabelColor: Colors.deepPurple[200],
                  tabs: [
                    Tab(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: W.textBody(
                          cText: 'Surah',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: W.textBody(
                          cText: 'Parah',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: W.textBody(
                          cText: 'Page',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: W.textBody(
                          cText: 'Hjb',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: ctrl.controller,
                  children: [
                    const SurahPage(),
                    Center(
                      child: W.textBody(cText: 'Parah'),
                    ),
                    Center(
                      child: W.textBody(cText: 'Page'),
                    ),
                    Center(
                      child: W.textBody(cText: 'Hjb'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
