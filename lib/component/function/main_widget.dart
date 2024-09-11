import 'package:flutter/material.dart';

MainWidget get W => MainWidget._internal();

class MainWidget {
  MainWidget._internal();

  Widget textBody({
    required String cText,
    Color? textColor,
    double? fontSize,
    FontWeight? fontWeight,
    TextAlign? textAlign,
  }) {
    return Text(
      cText,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
      softWrap: true,
    );
  }

  Widget imageAsset({
    required String imagePath,
    double? scale,
    BoxFit? fit,
  }) {
    return Image.asset(
      imagePath,
      scale: scale,
      fit: fit,
    );
  }

  BottomNavigationBarItem bottonNavBarItemDashboard({
    required Widget child,
    required int indexValue,
    required int indexNavBar,
    String? label,
  }) {
    return BottomNavigationBarItem(
      label: label ?? '',
      icon: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: indexValue == indexNavBar
              ? Colors.deepPurple[900]
              : Colors.transparent,
        ),
        child: Padding(padding: const EdgeInsets.all(10), child: child),
      ),
    );
  }

  Tab homeTabBar({
    required String label,
  }) {
    return Tab(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
        ),
        child: W.textBody(
          cText: label,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // ----- Padding ----- //

  paddingHeight16() {
    return const SizedBox(
      height: 16,
    );
  }

  paddingHeight8() {
    return const SizedBox(
      height: 8,
    );
  }

  paddingHeight5() {
    return const SizedBox(
      height: 5,
    );
  }

  paddingWidth16() {
    return const SizedBox(
      width: 16,
    );
  }

  paddingWidth8() {
    return const SizedBox(
      width: 8,
    );
  }

  paddingWidth5() {
    return const SizedBox(
      width: 5,
    );
  }
}
