import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/list.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/meal_date_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MealAppbar extends StatelessWidget {
  final int dateIndex;
  const MealAppbar({super.key, required this.dateIndex});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .23,
        child: Card(
          margin: const EdgeInsets.all(0),
          color: ColorUtils.bgColor,
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(0)),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Meal Plan',
                        style: textStyle.copyWith(
                            color: ColorUtils.brownText,
                            fontSize: 22,
                            fontWeight: FontWeight.w600),
                      ),
                      SvgPicture.asset(
                        'assets/images/search.svg',
                      ),
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .005),
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/tea.svg'),
                      SizeUtils.horizontalSpacing(
                          width: MediaQuery.of(context).size.width * .01),
                      Text(
                        '15 june 2022',
                        style: textStyle.copyWith(
                            color: ColorUtils.grayShade9, fontSize: 12),
                      )
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .03),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 66,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: dateList.length,
                      itemBuilder: (context, index) {
                        return DateListWidget(
                          selectedIndex: dateIndex,
                          index: index,
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
