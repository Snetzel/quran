import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quran/data/constant/image.dart';
import 'package:quran/component/function/main_widget.dart';
import 'package:quran/presentation/statemanagement/surah/surah_detail_getx.dart';

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
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.deepPurple[900],
            size: 32,
          ),
        ),
        title: Obx(
          () => W.textBody(
            cText: ctrl.surahDetail['namaLatin'],
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
              size: 32,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 380,
                  height: 260,
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
                SizedBox(
                  width: 380,
                  height: 260,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 32,
                      left: 24,
                      right: 24,
                    ),
                    child: Obx(
                      () => Column(
                        children: [
                          W.textBody(
                            cText: ctrl.surahDetail['namaLatin'],
                            textColor: Colors.white,
                            fontSize: 24,
                          ),
                          W.paddingHeight5(),
                          W.textBody(
                            cText: ctrl.surahDetail['arti'],
                            textColor: Colors.white,
                            fontSize: 16,
                          ),
                          W.paddingHeight16(),
                          const Divider(
                            color: Colors.white,
                          ),
                          W.paddingHeight16(),
                          W.textBody(
                            cText:
                                '${ctrl.surahDetail['tempatTurun']} - ${ctrl.surahDetail['jumlahAyat']} ayat',
                            textColor: Colors.white,
                          ),
                          const SizedBox(height: 20),
                          W.textBody(
                            cText: ctrl.surahDetail['nama'],
                            textColor: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            W.paddingHeight16(),
            Expanded(
              child: SizedBox(
                width: 380,
                child: Obx(
                  () => ListView.builder(
                    itemCount: ctrl.surahDetail['ayat'].length,
                    itemBuilder: (context, index) {
                      final idata = ctrl.surahDetail['ayat'][index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                          W.paddingHeight5(),
                          SizedBox(
                            width: double.infinity,
                            child: W.textBody(
                              cText: idata['teksArab'],
                              textColor: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              textAlign: TextAlign.right,
                            ),
                          ),
                          W.textBody(
                            cText: idata['teksIndonesia'],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 20,
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
          ],
        ),
      ),
    );
  }
}
