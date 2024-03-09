// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:test2/controller/constant.dart';

class text extends StatelessWidget {
  String content;
   text({
    super.key,
    required this.content
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      content,
      style: TextStyle(
          fontSize:appTheme.ContentfontSize,
          fontWeight: appTheme.ContentfontWieght,
          color: appTheme.secondColor),
    );
  }
}
