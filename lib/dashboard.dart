import 'package:flutter/material.dart';
import 'package:quran/pages/bookmark_page.dart';
import 'package:quran/pages/home_page.dart';
import 'package:quran/pages/mosque_page.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int pageIndex = 1;

  List page = [
    const BookmarkPage(),
    const HomePage(),
    const MosquePage(),
  ];

  void onTap(int index) {
    setState(() => pageIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: page[pageIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        currentIndex: pageIndex,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.deepPurple[900],
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: pageIndex == 0
                    ? Colors.deepPurple[900]
                    : Colors.transparent,
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.bookmark,
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: pageIndex == 1
                    ? Colors.deepPurple[900]
                    : Colors.transparent,
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.home,
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '  ',
            icon: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: pageIndex == 2
                    ? Colors.deepPurple[900]
                    : Colors.transparent,
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
    );
  }
}
