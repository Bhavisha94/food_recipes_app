import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/list.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/chief_screen_banner.dart';
import 'package:dt_receipe/widget/play_icon.dart';
import 'package:dt_receipe/widget/recipe_item_widget.dart';
import 'package:dt_receipe/widget/recipe_name_widget.dart';
import 'package:dt_receipe/widget/search_appbar.dart';
import 'package:dt_receipe/widget/total_favorite_widget.dart';
import 'package:flutter/material.dart';

class ChiefScreen extends StatelessWidget {
  const ChiefScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bgColor,
      appBar: searchAppbar(text: 'Chief'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today Special Recipe',
                    style: textStyle.copyWith(
                        fontSize: 20,
                        color: ColorUtils.lightBrown,
                        fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, '/addRecipe'),
                    child: Container(
                      width: MediaQuery.of(context).size.width * .32,
                      height: MediaQuery.of(context).size.height * .045,
                      decoration: BoxDecoration(
                        color: ColorUtils.orange,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Add New Recipe',
                          style: textStyle.copyWith(
                              color: ColorUtils.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              const ChiefScreenBanner(),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .01),
              ListView.builder(
                shrinkWrap: true,
                itemCount: chiefRecipeList.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 148,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/${chiefRecipeList[index].recipe.toString()}.png',
                                ),
                                fit: BoxFit.fill)),
                        child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 148,
                              decoration: BoxDecoration(
                                color: ColorUtils.blackShade,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: PlayWidget(
                                onTap: () => Navigator.pushNamed(
                                    context, '/youtubePlayerVideo',
                                    arguments: chiefRecipeList[index].url),
                              ),
                            ),
                            Positioned(
                                right: MediaQuery.of(context).size.width * .03,
                                top: MediaQuery.of(context).size.height * .015,
                                child: const TotalFavoriteWidget(
                                    img: 'star', color: Colors.white)),
                            Positioned(
                                left: MediaQuery.of(context).size.width * .03,
                                top: MediaQuery.of(context).size.height * .015,
                                child: const RecipeItemWidget()),
                            Positioned(
                                left: MediaQuery.of(context).size.width * .03,
                                bottom:
                                    MediaQuery.of(context).size.height * .01,
                                child: RecipeNameWithTime(
                                  name: chiefRecipeList[index].name.toString(),
                                ))
                          ],
                        ),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .01)
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
