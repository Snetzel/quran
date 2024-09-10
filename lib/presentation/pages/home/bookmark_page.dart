import 'package:flutter/material.dart';
import 'package:quran/component/function/main_function.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            C.getSurah();
          },
          child: Text('get'),
        ),
      ),
    );
  }
}
