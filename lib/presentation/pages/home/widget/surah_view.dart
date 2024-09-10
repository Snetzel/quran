import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/component/function/main_widget.dart';
import 'package:quran/presentation/statemanagement/surah/surah_getx.dart';
import 'package:quran/presentation/pages/surah_detail/surah_detail_page.dart';

class SurahPage extends StatelessWidget {
  SurahPage({super.key});

  final SurahController ctrl = Get.put(SurahController());

  @override
  Widget build(BuildContext context) {
    ctrl.init();
    return Center(
      child: SizedBox(
        child: Obx(
          () => ListView.builder(
            itemCount: ctrl.surah.value.length,
            itemBuilder: (context, index) {
              final idata = ctrl.surah.value[index];
              return InkWell(
                onTap: () => Get.to(SurahDetail(nomorSurat: idata.nomor)),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 20,
                          ),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.deepPurple.shade900,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: W.textBody(
                                    cText: idata.nomor.toString(),
                                  ),
                                ),
                              ),
                              W.paddingWidth5(),
                              W.paddingWidth5(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  W.textBody(
                                    cText: idata.namaLatin,
                                    textColor: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  W.paddingHeight5(),
                                  W.textBody(
                                    cText: idata.arti,
                                    fontSize: 16,
                                    textColor: Colors.deepPurple[900],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              W.textBody(
                                cText: idata.nama,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                textColor: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
