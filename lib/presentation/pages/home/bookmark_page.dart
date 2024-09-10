import 'package:flutter/material.dart';
import 'package:quran/component/function/dio.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: dioQuran,
          child: Text('get'),
        ),
      ),
    );
  }
}
