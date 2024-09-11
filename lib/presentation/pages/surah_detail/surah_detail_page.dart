import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quran/data/constant/image.dart';
import 'package:quran/component/function/main_widget.dart';
import 'package:quran/presentation/statemanagement/surah_detail/surah_detail_getx.dart';

class SurahDetail extends StatelessWidget {
  final int nomorSurat;
  SurahDetail({
    super.key,
    required this.nomorSurat,
  });

  final SurahDetailController ctrl = Get.put(SurahDetailController());

  @override
  Widget build(BuildContext context) {
    ctrl.nNomorSurah.value = nomorSurat;
    ctrl.init();
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
                onPressed: () => Get.back(),
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.deepPurple[900],
                  size: 24,
                ),
              ),
              title: Obx(
                () => W.textBody(
                  cText: ctrl.vaSurahDetail.value.isEmpty
                      ? 'Memuat'
                      : ctrl.vaSurahDetail.value[0].namaLatin,
                  fontSize: 24,
                  textColor: Colors.deepPurple[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.deepPurple[900],
                    size: 24,
                  ),
                ),
              ],
              bottom: PreferredSize(
                preferredSize: const Size(double.infinity, 260),
                child: Container(
                  height: 260,
                  width: double.infinity,
                  color: Colors.white,
                  child: Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: Get.mediaQuery.size.width * 0.85,
                          height: 240,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        Positioned(
                          right: -100,
                          bottom: -150,
                          child: Opacity(
                            opacity: 0.2,
                            child: W.imageAsset(
                              imagePath: MyImage.quran,
                              scale: 3,
                            ),
                          ),
                        ),
                        Obx(
                          () => ctrl.vaSurahDetail.value.isEmpty
                              ? const Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                    backgroundColor: Colors.grey,
                                  ),
                                )
                              : SizedBox(
                                  width: Get.mediaQuery.size.width * 0.85,
                                  height: 220,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 32,
                                      left: 24,
                                      right: 24,
                                    ),
                                    child: Column(
                                      children: [
                                        W.textBody(
                                          cText: ctrl
                                              .vaSurahDetail.value[0].namaLatin,
                                          textColor: Colors.white,
                                          fontSize: 24,
                                        ),
                                        W.paddingHeight5(),
                                        W.textBody(
                                          cText: ctrl
                                              .vaSurahDetail.value[0].namaLatin,
                                          textColor: Colors.white,
                                          fontSize: 16,
                                        ),
                                        W.paddingHeight8(),
                                        const Divider(
                                          color: Colors.white,
                                        ),
                                        W.paddingHeight8(),
                                        W.textBody(
                                          cText:
                                              '${ctrl.vaSurahDetail.value[0].tempatTurun} - ${ctrl.vaSurahDetail.value[0].jumlahAyat} ayat',
                                          textColor: Colors.white,
                                        ),
                                        W.paddingHeight16(),
                                        W.textBody(
                                          cText:
                                              ctrl.vaSurahDetail.value[0].nama,
                                          textColor: Colors.white,
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ],
                                    ),
                                  ),
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
          child: Obx(
            () => ctrl.vaSurahDetail.value.isEmpty
                ? const Center(
                    child: CircularProgressIndicator(
                      color: Colors.grey,
                      backgroundColor: Colors.white,
                    ),
                  )
                : ListView.builder(
                    itemCount: ctrl.vaSurahDetail.value[0].ayat.length,
                    itemBuilder: (context, index) {
                      final idata = ctrl.vaSurahDetail.value[0].ayat[index];
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 5,
                                      horizontal: 15,
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.deepPurple[900],
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: W.textBody(
                                              cText: (index + 1).toString(),
                                              textColor: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const Spacer(),
                                        const Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Icon(
                                            Iconsax.share,
                                            color: Colors.deepPurple,
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Icon(
                                            Iconsax.play,
                                            color: Colors.deepPurple,
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Icon(
                                            Iconsax.bookmark,
                                            color: Colors.deepPurple,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                W.paddingHeight8(),
                                SizedBox(
                                  width: double.infinity,
                                  child: W.textBody(
                                    cText: idata.teksArab,
                                    textColor: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28,
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                W.paddingHeight8(),
                                W.textBody(
                                  cText: idata.teksIndonesia,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 15,
                            ),
                            child: Divider(
                              height: 1,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
          ),
        ),
      ),
    );
  }
}
