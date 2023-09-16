import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:flutter/material.dart';

class RecipeItemWidget extends StatelessWidget {
  const RecipeItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '131 Calories',
          style: textStyle.copyWith(
              color: ColorUtils.white,
              fontSize: 10,
              fontWeight: FontWeight.w500),
        ),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .005),
        Text(
          '20 Ingridients',
          style: textStyle.copyWith(
              fontSize: 10,
              color: ColorUtils.white,
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
