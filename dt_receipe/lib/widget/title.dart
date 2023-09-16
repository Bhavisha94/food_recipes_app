import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final double width;
  final String image;
  final double imageWidth;
  final double imageHeight;
  const TitleWidget(
      {super.key,
      required this.title,
      required this.width,
      required this.image,
      required this.imageWidth,
      required this.imageHeight});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: textStyle.copyWith(fontSize: 22, color: ColorUtils.brownText),
        ),
        SizeUtils.horizontalSpacing(width: width),
        Image.asset(
          'assets/images/$image.png',
          fit: BoxFit.fill,
          width: imageWidth,
          height: imageHeight,
        )
      ],
    );
  }
}
