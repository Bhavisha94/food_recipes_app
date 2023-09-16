import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:flutter/material.dart';

class TextSpanWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  const TextSpanWidget(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          text: text1,
          style: textStyle.copyWith(
              color: ColorUtils.orange,
              fontWeight: FontWeight.bold,
              fontSize: 16),
          children: [
            TextSpan(
                text: text2,
                style: textStyle.copyWith(
                    color: ColorUtils.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
            TextSpan(
              text: text3,
              style: textStyle.copyWith(
                  color: ColorUtils.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )
          ]),
      textAlign: TextAlign.center,
    );
  }
}
