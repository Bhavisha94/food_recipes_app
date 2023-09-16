import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/bottom_recipe_details.dart';
import 'package:dt_receipe/widget/divider_widget.dart';
import 'package:dt_receipe/widget/play_icon.dart';
import 'package:dt_receipe/widget/total_favorite_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final scaffoldState = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    showBottomsheet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bgColor,
      key: scaffoldState,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .45,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/details_img.png'),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: [
                      AppBar(
                        backgroundColor: ColorUtils.transparent,
                        elevation: 0,
                        iconTheme: const IconThemeData(color: Colors.white),
                        actions: [
                          SvgPicture.asset(
                            'assets/images/search.svg',
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                      PlayWidget(
                        onTap: () => Navigator.pushNamed(
                            context, '/youtubePlayerVideo',
                            arguments:
                                'https://www.youtube.com/watch?v=Nkndlln0j8cs'),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Aloo Tikki Burger',
                            style: textStyle.copyWith(
                                color: ColorUtils.orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/cap1.png',
                                width: 15,
                                height: 15,
                                fit: BoxFit.fill,
                                color: ColorUtils.textGrey,
                              ),
                              SizeUtils.horizontalSpacing(width: 5),
                              Text(
                                'John Dev',
                                style: textStyle.copyWith(
                                    color: ColorUtils.orange,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          )
                        ],
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .01),
                      Row(
                        children: [
                          const TotalFavoriteWidget(
                              img: 'star_filled', color: ColorUtils.textGrey),
                          SizeUtils.horizontalSpacing(
                              width: MediaQuery.of(context).size.width * .05),
                          Text(
                            '2 Reviews',
                            style: textStyle.copyWith(
                                color: ColorUtils.textGrey, fontSize: 12),
                          )
                        ],
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .01),
                      Row(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/images/time.svg',
                                color: ColorUtils.textGrey,
                                width: 12,
                                height: 12,
                              ),
                              SizeUtils.horizontalSpacing(width: 5),
                              Text(
                                '30 min',
                                style: textStyle.copyWith(
                                    color: ColorUtils.textGrey, fontSize: 11),
                              )
                            ],
                          ),
                          SizeUtils.horizontalSpacing(
                              width: MediaQuery.of(context).size.width * .02),
                          Text(
                            '131 Cal...',
                            style: textStyle.copyWith(
                                color: ColorUtils.textGrey, fontSize: 11),
                          ),
                          SizeUtils.horizontalSpacing(
                              width: MediaQuery.of(context).size.width * .02),
                          Text(
                            '20 Ing...',
                            style: textStyle.copyWith(
                                color: ColorUtils.textGrey, fontSize: 11),
                          )
                        ],
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .01),
                      const DividerWidget(),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .01),
                      heading('Ingredients'),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              itemRow('1 Burger pav'),
                              itemRow('Aloo'),
                              itemRow('Tikki'),
                              itemRow('Cabbage'),
                              itemRow('Capsicum')
                            ],
                          ),
                          SizeUtils.horizontalSpacing(width: 10),
                          Column(
                            children: [itemRow('Tomato')],
                          )
                        ],
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .01),
                      heading('Steps'),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .01),
                      MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 7),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/step.png',
                                    height: 62,
                                    width: 116,
                                    fit: BoxFit.fill,
                                  ),
                                  SizeUtils.horizontalSpacing(width: 10),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Step ${index + 1}',
                                          style: textStyle.copyWith(
                                              color: ColorUtils.textGrey,
                                              fontSize: 14),
                                        ),
                                        SizeUtils.verticalSpacing(height: 5),
                                        Text(
                                          'Lörem ipsum ber hexant astroktigt. Beperat. Bett. Megadat vött divis. \nGyd besk i gåtisa behöbåv. Plaren disk.',
                                          style: textStyle.copyWith(
                                              color: ColorUtils.textGrey,
                                              fontSize: 10),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .01),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        offset: Offset(0, -5),
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 10),
                  ], color: ColorUtils.bgColor),
                  child: Center(
                    child: InkWell(
                      // onTap: () => showModalBottomSheet(
                      //   isDismissible: true,
                      //   enableDrag: true,
                      //   context: context,
                      //   isScrollControlled: true,
                      //   builder: (context) {
                      //     return const BottomRecipeWidget();
                      //   },
                      // ),
                      onTap: () => flexibleSheet(),
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  itemRow(String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/dot.svg'),
          SizeUtils.horizontalSpacing(width: 10),
          Text(
            name,
            style: textStyle.copyWith(color: ColorUtils.textGrey, fontSize: 11),
          )
        ],
      ),
    );
  }

  Text heading(String text) {
    return Text(
      text,
      style: textStyle.copyWith(color: ColorUtils.brownText, fontSize: 20),
    );
  }

  showBottomsheet() {
    Future.delayed(const Duration(milliseconds: 500), () {
      // showModalBottomSheet(
      //   isDismissible: true,
      //   enableDrag: true,
      //   context: context,
      //   isScrollControlled: true,
      //   builder: (context) {
      //     return const BottomRecipeWidget();
      //   },
      // );
      flexibleSheet();
    });
  }

  flexibleSheet() {
    showFlexibleBottomSheet(
      minHeight: 0,
      initHeight: 0.3,
      maxHeight: 1,
      context: context,
      anchors: [0, 0.5, 1],
      isSafeArea: true,
      bottomSheetColor: ColorUtils.white,
      builder: (context, scrollController, bottomSheetOffset) {
        return BottomRecipeWidget(
          scrollController: scrollController,
        );
      },
    );
  }
}
