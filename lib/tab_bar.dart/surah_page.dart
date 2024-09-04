import 'package:flutter/material.dart';
import 'package:quran/pages/surah_detail.dart';

class SurahPage extends StatefulWidget {
  const SurahPage({super.key});

  @override
  State<SurahPage> createState() => _SurahPageState();
}

class IndexData {
  final String name;
  final String desc;
  final String surah;

  IndexData(
    this.name,
    this.desc,
    this.surah,
  );
}

class _SurahPageState extends State<SurahPage> {
  List<IndexData> data = [
    IndexData('Al-Fatiah', 'MECCAN - 7 Verses', 'الفاتحة'),
    IndexData('Al-Baqarah', 'MEDINIAN - 286 VERSES', 'البقرة'),
    IndexData("Ali'imran", 'MECCAN - 200 VERSES', 'علي عمران'),
    IndexData('An-Nisa', 'MECCAN - 176 VERSES', 'النساء'),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final idata = data[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return SurahDetail(
                        name: idata.name,
                        desc: idata.desc,
                        surah: idata.surah,
                      );
                    },
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
                                child: Text((index + 1).toString()),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                idata.name,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                idata.desc,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.deepPurple[900],
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            idata.surah,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple[900],
                            ),
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
