// ignore_for_file: must_be_immutable

import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dt_receipe/cubit/food_type/cubit/food_type_cubit.dart';

class FoodTypeWidget extends StatelessWidget {
  FoodTypeWidget({super.key});

  String selectedType = 'Veg';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FoodTypeCubit, FoodTypeState>(
      listener: (context, state) {
        if (state is SelectedFoodType) {
          selectedType = state.type;
        }
      },
      builder: (context, state) {
        return Row(
          children: [
            type(
              type: 'Veg',
              color: selectedType == 'Veg'
                  ? ColorUtils.orange
                  : ColorUtils.textGrey,
              onTap: () => context.read<FoodTypeCubit>().type('Veg'),
            ),
            SizeUtils.horizontalSpacing(width: 10),
            type(
              type: 'Non-Veg',
              color: selectedType == 'Non-Veg'
                  ? ColorUtils.orange
                  : ColorUtils.textGrey,
              onTap: () => context.read<FoodTypeCubit>().type('Non-Veg'),
            ),
          ],
        );
      },
    );
  }

  type({String? type, required Color color, VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: color,
            child: CircleAvatar(
              radius: 14,
              backgroundColor: ColorUtils.bgColor,
              child: Container(
                width: 17,
                height: 17,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                ),
              ),
            ),
          ),
          SizeUtils.horizontalSpacing(width: 7),
          Text(
            'Veg',
            style: textStyle.copyWith(
                color: color, fontSize: 16, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
