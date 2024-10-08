import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/data/constant/config.dart';
import 'package:quran/data/constant/image.dart';
import 'package:quran/component/function/main_widget.dart';
import 'package:quran/presentation/pages/home/widget/surah_view.dart';
import 'package:quran/presentation/statemanagement/home/home_getx.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomeController ctrl = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: true,
              snap: true,
              backgroundColor: Colors.grey[50],
              elevation: 0,
              toolbarHeight: 80,
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 24,
                ),
              ),
              title: W.textBody(
                cText: AppConfig.cAppName,
                textColor: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
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
              bottom: PreferredSize(
                preferredSize: const Size(double.infinity, 250),
                child: Container(
                  height: 250,
                  color: Colors.grey[50],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        W.paddingHeight8(),
                        W.textBody(
                          cText: 'Assalammualaikum',
                          fontSize: 20,
                          textColor: Colors.black,
                        ),
                        // W.paddingHeight5(),
                        // W.textBody(
                        //   cText: 'Habibie',
                        //   fontSize: 28,
                        //   fontWeight: FontWeight.bold,
                        //   textColor: Colors.black,
                        // ),
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
                        SizedBox(
                          height: 60,
                          child: TabBar(
                            controller: ctrl.controller,
                            indicatorColor: Colors.deepPurple[900],
                            labelColor: Colors.deepPurple[900],
                            unselectedLabelColor: Colors.deepPurple[200],
                            tabs: [
                              W.homeTabBar(label: 'Surah'),
                              W.homeTabBar(label: 'Parah'),
                              W.homeTabBar(label: 'Page'),
                              W.homeTabBar(label: 'HJB'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: Expanded(
          child: TabBarView(
            controller: ctrl.controller,
            children: [
              SurahPage(),
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
      ),
    );
  }
}
