import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecipeNameWithTime extends StatelessWidget {
  final String name;
  const RecipeNameWithTime({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              'assets/images/time.svg',
              color: ColorUtils.orange,
              width: 12,
              height: 12,
            ),
            SizeUtils.horizontalSpacing(width: 5),
            Text(
              '30 min',
              style: textStyle.copyWith(color: ColorUtils.white, fontSize: 10),
            ),
          ],
        ),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .005),
        Text(
          name,
          style: textStyle.copyWith(
              color: ColorUtils.white,
              fontWeight: FontWeight.w600,
              fontSize: 22),
        )
      ],
    );
  }
}
