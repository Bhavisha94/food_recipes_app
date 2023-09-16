import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/list.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/banner.dart';
import 'package:dt_receipe/widget/best_recipe_widget.dart';
import 'package:dt_receipe/widget/category_item.dart';
import 'package:dt_receipe/widget/chief_list_widget.dart';
import 'package:dt_receipe/widget/new_recipe.dart';
import 'package:dt_receipe/widget/textfield.dart';
import 'package:dt_receipe/widget/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController search = TextEditingController();
  FocusNode searchFocusNode = FocusNode();
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            Text(
              'Online Food',
              style: textStyle.copyWith(
                  fontSize: 22,
                  color: ColorUtils.brownText,
                  fontWeight: FontWeight.bold),
            ),
            const TitleWidget(
                image: 'chef',
                width: 10,
                title: 'Recipe!',
                imageHeight: 26,
                imageWidth: 23),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            TextFieldWidget(
              focusNode: searchFocusNode,
              obsecure: false,
              controller: search,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .06,
              hintText: 'Search your favorite food recipe....',
              keyboardType: TextInputType.text,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  'assets/images/search.svg',
                ),
              ),
              hintTextStyle: hintTextStyle,
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            const BannerWidget(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            const TitleWidget(
                title: 'Category',
                width: 5,
                image: 'food1',
                imageWidth: 17,
                imageHeight: 15),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .085,
              child: ListView.builder(
                itemCount: categoryImg.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategoryItem(
                    index: index,
                  );
                  // return Image.asset('assets/images/gujarati.png');
                },
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            const TitleWidget(
                title: 'New Recipe',
                width: 10,
                image: 'food1',
                imageWidth: 17,
                imageHeight: 15),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            NewRecipeWidgrt(pageController: controller),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            const TitleWidget(
                title: 'Best Recipe',
                width: 10,
                image: 'food1',
                imageWidth: 17,
                imageHeight: 15),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            const BestRecipeWidget(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            const TitleWidget(
              image: 'chef',
              width: 10,
              title: 'Chief',
              imageHeight: 26,
              imageWidth: 23,
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            ChiefListWidget(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
          ],
        ),
      ),
    ));
  }
}
