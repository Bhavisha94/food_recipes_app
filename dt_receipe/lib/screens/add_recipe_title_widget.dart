import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:flutter/material.dart';

Row title(String text, Widget icon) {
  return Row(
    children: [
      Text(
        text,
        style: textStyle.copyWith(
            color: ColorUtils.brownText,
            fontSize: 16,
            fontWeight: FontWeight.w500),
      ),
      SizeUtils.horizontalSpacing(width: 5),
      icon
    ],
  );
}
