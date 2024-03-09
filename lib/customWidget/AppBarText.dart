
import 'package:flutter/material.dart';
import 'package:test2/controller/constant.dart';

// ignore: must_be_immutable
class appbartext extends StatelessWidget {
  String content;
   appbartext({
    super.key,
    required this.content
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "$content",
      style: const TextStyle(
          fontWeight: appTheme.AppBarfontWieght,
          fontSize: appTheme.AppBarFontSize,
          color: appTheme.secondColor),
    );
  }
}
