import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/list.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/time_widget.dart';
import 'package:dt_receipe/widget/total_favorite_widget.dart';
import 'package:flutter/material.dart';

class BestRecipeWidget extends StatelessWidget {
  const BestRecipeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .21,
      child: ListView.builder(
        itemCount: recipes.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Container(
              width: MediaQuery.of(context).size.width * .47,
              height: MediaQuery.of(context).size.height * .21,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorUtils.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .47,
                    height: MediaQuery.of(context).size.height * .15,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/${recipes[index]}.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .005),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              recipesName[index],
                              style: textStyle.copyWith(
                                  color: ColorUtils.brownText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '130 Cal',
                              style: textStyle.copyWith(
                                  color: ColorUtils.textGrey, fontSize: 10),
                            )
                          ],
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .005),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            TimeWidget(
                              color: ColorUtils.textGrey,
                            ),
                            TotalFavoriteWidget(
                              img: 'star_filled',
                              color: ColorUtils.textGrey,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
