import 'package:dt_receipe/widget/details_screen_textfield.dart';
import 'package:flutter/material.dart';
import 'package:dt_receipe/utils/style.dart';
import 'divider_widget.dart';
import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/size.dart';
import 'best_recipe_widget.dart';

class BottomRecipeWidget extends StatelessWidget {
  final ScrollController scrollController;
  const BottomRecipeWidget({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(color: ColorUtils.textGrey, blurRadius: 10, spreadRadius: 10),
      ], color: ColorUtils.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Column(
                      children: [
                        Text(
                          'Show More',
                          style: textStyle.copyWith(
                              color: ColorUtils.brownText, fontSize: 14),
                        ),
                        const Icon(Icons.keyboard_arrow_down_outlined)
                      ],
                    ),
                  ),
                ),
              ),
              const DividerWidget(),
              Text(
                'Related Recipe',
                style: textStyle.copyWith(
                    color: ColorUtils.brownText, fontSize: 20),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .01),
              const BestRecipeWidget(),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              const AddCommentTextField(),
            ],
          ),
        ),
      ),
    );

    /* return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Column(
                    children: [
                      Text(
                        'Show More',
                        style: textStyle.copyWith(
                            color: ColorUtils.brownText, fontSize: 14),
                      ),
                      const Icon(Icons.keyboard_arrow_down_outlined)
                    ],
                  ),
                ),
              ),
            ),
            const DividerWidget(),
            Text(
              'Related Recipe',
              style:
                  textStyle.copyWith(color: ColorUtils.brownText, fontSize: 20),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            const BestRecipeWidget(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            const AddCommentTextField(),
          ],
        ),
      ),
    );*/
  }
}
