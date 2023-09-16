import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TotalFavoriteWidget extends StatelessWidget {
  final String img;
  final Color color;
  const TotalFavoriteWidget(
      {super.key, required this.img, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/images/$img.svg',
          width: 10,
          height: 10,
        ),
        SizeUtils.horizontalSpacing(width: 3),
        Text(
          '4.8',
          style: textStyle.copyWith(
              fontWeight: FontWeight.w600, fontSize: 10, color: color),
        ),
      ],
    );
  }
}
