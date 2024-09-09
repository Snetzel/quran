import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/component/main_widget.dart';
import 'package:quran/statemanagement/getx_class/surah_getx.dart';
import 'package:quran/statemanagement/pages/surah_detail_page.dart';

class SurahPage extends StatelessWidget {
  const SurahPage({super.key});

  @override
  Widget build(BuildContext context) {
    SurahController ctrl = Get.put(SurahController());
    return Center(
      child: SizedBox(
        child: ListView.builder(
          itemCount: ctrl.vaData.length,
          itemBuilder: (context, index) {
            final idata = ctrl.vaData[index];
            return InkWell(
              onTap: () {
                Get.to(
                  SurahDetail(
                    name: idata.name,
                    desc: idata.desc,
                    surah: idata.surah,
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 20,
                            ),
                            child: Container(
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
                                  cText: (index + 1).toString(),
                                ),
                              ),
                            ),
                          ),
                          W.paddingWidth5(),
                          W.paddingWidth5(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              W.textBody(
                                cText: idata.name,
                                textColor: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              W.paddingHeight5(),
                              W.textBody(
                                cText: idata.desc,
                                fontSize: 16,
                                textColor: Colors.deepPurple[900],
                              ),
                            ],
                          ),
                          const Spacer(),
                          W.textBody(
                            cText: idata.surah,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            textColor: Colors.black,
                          ),
                        ],
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
    );
  }
}
