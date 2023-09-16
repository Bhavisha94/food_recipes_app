import 'package:dt_receipe/cubit/new_recipe_list.dart/cubit/recipe_list_cubit.dart';
import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/list.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewRecipeWidgrt extends StatelessWidget {
  final PageController pageController;
  NewRecipeWidgrt({super.key, required this.pageController});

  int page = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RecipeListCubit, RecipeListState>(
      listener: (context, state) {
        if (state is ChangeListPosition) {
          page = state.pageNo;
        }
      },
      builder: (context, state) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .3,
          child: Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .3,
                child: PageView.builder(
                  itemCount: newRecipeList.length,
                  controller: pageController,
                  onPageChanged: (value) {
                    context.read<RecipeListCubit>().change(value);
                  },
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * .3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/${newRecipeList[index].recipe}.png'),
                                fit: BoxFit.fill)),
                        child: Stack(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * .3,
                            ),
                            Positioned(
                              top: MediaQuery.of(context).size.height * .015,
                              left: MediaQuery.of(context).size.width * .02,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    newRecipeList[index].name.toString(),
                                    style: textStyle.copyWith(
                                        color: ColorUtils.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizeUtils.verticalSpacing(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .005),
                                  Text(
                                    '12 Ingridients',
                                    style: textStyle.copyWith(
                                        fontSize: 10, color: ColorUtils.white),
                                  ),
                                  SizeUtils.verticalSpacing(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .008),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/time.svg',
                                        width: 15,
                                        height: 15,
                                        fit: BoxFit.fill,
                                      ),
                                      SizeUtils.horizontalSpacing(width: 5),
                                      Text(
                                        '20 min',
                                        style: textStyle.copyWith(
                                            fontSize: 10,
                                            color: ColorUtils.white),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: MediaQuery.of(context).size.height * .025,
                              left: MediaQuery.of(context).size.width * .02,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/star.svg',
                                        width: 12,
                                        height: 12,
                                        fit: BoxFit.fill,
                                      ),
                                      SizeUtils.horizontalSpacing(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .02),
                                      Text(
                                        '4.8',
                                        style: textStyle.copyWith(
                                            fontSize: 10,
                                            color: ColorUtils.white,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                  SizeUtils.verticalSpacing(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .007),
                                  Text(
                                    '130 Calories',
                                    style: textStyle.copyWith(
                                        color: ColorUtils.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              page != 2
                  ? Positioned(
                      top: MediaQuery.of(context).size.height * .25 / 2.1,
                      right: MediaQuery.of(context).size.width * .05,
                      child: InkWell(
                        onTap: () => pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn),
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/next.png'),
                                  fit: BoxFit.fill)),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(),
              page != 0
                  ? Positioned(
                      top: MediaQuery.of(context).size.height * .25 / 2,
                      left: MediaQuery.of(context).size.width * .05,
                      child: InkWell(
                        onTap: () => pageController.previousPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn),
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/next.png'),
                                  fit: BoxFit.fill)),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  : const SizedBox()
            ],
          ),
        );
      },
    );
  }
}
