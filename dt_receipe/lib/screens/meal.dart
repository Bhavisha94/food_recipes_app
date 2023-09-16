import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/meal_appbar.dart';
import 'package:dt_receipe/widget/total_favorite_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MealPlan extends StatefulWidget {
  const MealPlan({super.key});

  @override
  State<MealPlan> createState() => _MealPlanState();
}

class _MealPlanState extends State<MealPlan> {
  int dateindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          MealAppbar(dateIndex: dateindex),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .03),
                  Text(
                    'Wednesday, 15 June',
                    style: textStyle.copyWith(
                        color: ColorUtils.brownText,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .03),
                  time('Breakfast'),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  item(context),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  time('Lunch'),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  item(context),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  time('Dinner'),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  item(context),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }

  Container item(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 144,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          image: const DecorationImage(
              image: AssetImage('assets/images/breakfast.png'),
              fit: BoxFit.fill)),
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 144,
            child: Center(
              child: Container(
                width: 43,
                height: 43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromRGBO(0, 0, 0, 0.58),
                ),
                child: InkWell(
                  onTap: () => Navigator.pushNamed(
                      context, '/youtubePlayerVideo',
                      arguments: 'https://www.youtube.com/watch?v=eUUcpycEMlU'),
                  child: const Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: ColorUtils.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.01,
            left: MediaQuery.of(context).size.width * 0.03,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Egg with Carrot',
                  style: textStyle.copyWith(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * 0.01),
                const TotalFavoriteWidget(img: 'star', color: ColorUtils.white)
              ],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .012,
            left: MediaQuery.of(context).size.width * 0.03,
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/images/time.svg',
                  color: ColorUtils.white,
                ),
                SizeUtils.horizontalSpacing(width: 3),
                Text(
                  '30 min',
                  style: textStyle.copyWith(
                      color: ColorUtils.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w500),
                ),
                SizeUtils.horizontalSpacing(width: 5),
                Text(
                  '131 cal...',
                  style: textStyle.copyWith(
                      color: ColorUtils.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w500),
                ),
                SizeUtils.horizontalSpacing(width: 5),
                Text(
                  '20 Indi...',
                  style: textStyle.copyWith(
                      color: ColorUtils.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.015,
            right: MediaQuery.of(context).size.width * 0.03,
            child: SvgPicture.asset(
              'assets/images/pen.svg',
            ),
          )
        ],
      ),
    );
  }

  Row time(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: textStyle.copyWith(
              color: const Color(0xff8A8A8A),
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        const CircleAvatar(
          radius: 14,
          backgroundColor: ColorUtils.orange,
          child: Center(
            child: Icon(
              Icons.add,
              size: 20,
              color: ColorUtils.white,
            ),
          ),
        )
      ],
    );
  }
}
