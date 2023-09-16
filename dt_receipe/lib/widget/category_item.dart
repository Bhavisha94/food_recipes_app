import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/list.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final double? imageHeight;
  final int index;
  const CategoryItem({super.key, this.imageHeight, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        width: MediaQuery.of(context).size.width * .13,
        height: MediaQuery.of(context).size.height * .85,
        decoration: BoxDecoration(
            color: ColorUtils.white, borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .055,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Image.asset(
                  'assets/images/${categoryImg[index]}.png',
                  height: heigth[index],
                  width: MediaQuery.of(context).size.width * .12,
                  fit: BoxFit.fill,
                ),
              ]),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            Text(
              categoryName[index],
              style:
                  textStyle.copyWith(fontSize: 7, color: ColorUtils.brownText),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .005),
          ],
        ),
      ),
    );
  }
}
