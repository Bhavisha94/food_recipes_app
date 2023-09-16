import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/widget/play_icon.dart';
import 'package:dt_receipe/widget/recipe_item_widget.dart';
import 'package:dt_receipe/widget/recipe_name_widget.dart';
import 'package:dt_receipe/widget/total_favorite_widget.dart';
import 'package:flutter/material.dart';

class ChiefScreenBanner extends StatelessWidget {
  const ChiefScreenBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
              image: AssetImage('assets/images/pasta.png'), fit: BoxFit.fill)),
      child: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorUtils.blackShade),
              child: PlayWidget(
                onTap: () => Navigator.pushNamed(context, '/youtubePlayerVideo',
                    arguments: 'https://www.youtube.com/watch?v=6szIKaaGVAI'),
              )),
          Positioned(
              right: MediaQuery.of(context).size.width * .03,
              top: MediaQuery.of(context).size.height * .03,
              child: const TotalFavoriteWidget(
                  img: 'star', color: ColorUtils.white)),
          Positioned(
              left: MediaQuery.of(context).size.width * .03,
              top: MediaQuery.of(context).size.height * .027,
              child: const RecipeItemWidget()),
          Positioned(
              left: MediaQuery.of(context).size.width * .03,
              bottom: MediaQuery.of(context).size.height * .04,
              child: const RecipeNameWithTime(
                name: 'Special Pasta',
              ))
        ],
      ),
    );
  }
}
