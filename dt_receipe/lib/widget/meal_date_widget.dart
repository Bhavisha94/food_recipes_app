import 'package:dt_receipe/cubit/meal_plan/cubit/meal_plan_cubit.dart';
import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/list.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class DateListWidget extends StatelessWidget {
  final int index;
  int selectedIndex;

  DateListWidget({
    super.key,
    required this.selectedIndex,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MealPlanCubit, MealPlanState>(
      listener: (context, state) {
        if (state is SelectedDate) {
          selectedIndex = state.selectedIndex;
        }
      },
      builder: (context, state) {
        return InkWell(
          onTap: () => context.read<MealPlanCubit>().date(index),
          child: Padding(
            padding: const EdgeInsets.only(right: 2.5),
            child: Container(
              width: 47,
              height: 66,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: selectedIndex == index
                      ? ColorUtils.orange
                      : ColorUtils.white),
              child: Column(
                children: [
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .003),
                  Container(
                    width: 43,
                    height: 45,
                    decoration: BoxDecoration(
                        color: ColorUtils.white,
                        borderRadius: BorderRadius.circular(3)),
                    child: Center(
                      child: Text(
                        dateList[index].date,
                        style: textStyle.copyWith(
                            color: selectedIndex == index
                                ? ColorUtils.orange
                                : ColorUtils.grayShade9,
                            fontWeight: FontWeight.w600,
                            fontSize: 22),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Center(
                    child: Text(
                      dateList[index].day,
                      style: textStyle.copyWith(
                          color: selectedIndex == index
                              ? ColorUtils.white
                              : ColorUtils.grayShade9,
                          fontWeight: FontWeight.w600,
                          fontSize: 7),
                    ),
                  ))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
