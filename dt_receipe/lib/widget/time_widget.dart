import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TimeWidget extends StatelessWidget {
  final Color color;
  const TimeWidget({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/images/time.svg',
          color: color,
          width: 12,
          height: 12,
        ),
        SizeUtils.horizontalSpacing(width: 5),
        Text(
          '30 min | 20 Ing..',
          style: textStyle.copyWith(color: color, fontSize: 10),
        ),
      ],
    );
  }
}
