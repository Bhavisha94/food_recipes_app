import 'package:dotted_border/dotted_border.dart';
import 'package:dt_receipe/screens/add_recipe_title_widget.dart';
import 'package:dt_receipe/screens/ingredients_widget.dart';
import 'package:dt_receipe/screens/steps_widget.dart';
import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/list.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/add_video_widget.dart';
import 'package:dt_receipe/widget/button.dart';
import 'package:dt_receipe/widget/food_type.dart';
import 'package:dt_receipe/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dt_receipe/cubit/category/cubit/categories_cubit.dart';
import 'package:flutter_svg/svg.dart';

class AddRecipeScreen extends StatefulWidget {
  const AddRecipeScreen({super.key});

  @override
  State<AddRecipeScreen> createState() => _AddRecipeScreenState();
}

class _AddRecipeScreenState extends State<AddRecipeScreen> {
  TextEditingController name = TextEditingController(),
      cooking = TextEditingController(),
      calorie = TextEditingController(),
      ingredients = TextEditingController(),
      steps = TextEditingController();
  FocusNode nameNode = FocusNode(),
      cookingNode = FocusNode(),
      calorieNode = FocusNode(),
      ingredientNode = FocusNode(),
      stepsNode = FocusNode();
  String category = 'Gujarati';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ColorUtils.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: ColorUtils.bgColor,
        iconTheme: const IconThemeData(color: ColorUtils.brownText),
        title: Row(
          children: [
            Text(
              'Add Recipe',
              style: textStyle.copyWith(
                  color: ColorUtils.brownText,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            SizeUtils.horizontalSpacing(width: 10),
            Image.asset(
              'assets/images/cap1.png',
              width: 25,
              height: 25,
              fit: BoxFit.fill,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015,
              ),
              title(
                  'Recipe Name',
                  Image.asset(
                    'assets/images/cap1.png',
                    width: 15,
                    height: 15,
                    fit: BoxFit.fill,
                  )),
              SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015,
              ),
              TextFieldWidget(
                focusNode: nameNode,
                width: MediaQuery.of(context).size.width * .9,
                height: MediaQuery.of(context).size.height * .057,
                controller: name,
                hintText: 'Enter Recipe Name',
                hintTextStyle: hintTextStyle.copyWith(fontSize: 15),
                obsecure: false,
                keyboardType: TextInputType.text,
              ),
              SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02,
              ),
              title(
                  'Cooking Time',
                  SvgPicture.asset('assets/images/time.svg',
                      color: ColorUtils.brownText)),
              SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015,
              ),
              TextFieldWidget(
                focusNode: cookingNode,
                width: MediaQuery.of(context).size.width * .9,
                height: MediaQuery.of(context).size.height * .057,
                controller: cooking,
                hintText: 'Enter Cooking Time',
                hintTextStyle: hintTextStyle.copyWith(fontSize: 15),
                obsecure: false,
                keyboardType: TextInputType.text,
              ),
              SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02,
              ),
              FoodTypeWidget(),
              SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02,
              ),
              DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(10),
                dashPattern: const [5, 5],
                color: ColorUtils.textGrey,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/images/gallary.png',
                        width: 85,
                        height: 85,
                        fit: BoxFit.fill,
                      ),
                      Text(
                        'Add Poster Image',
                        style: textStyle.copyWith(
                            color: ColorUtils.grayShade8,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'image size 30 mb',
                        style: textStyle.copyWith(
                            color: const Color(0xffD9D9D9),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .01),
                    ],
                  ),
                ),
              ),
              SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02,
              ),
              title('Category', SvgPicture.asset('assets/images/category.svg')),
              SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015,
              ),
              BlocConsumer<CategoriesCubit, CategoriesState>(
                listener: (context, state) {
                  if (state is AddRecipeCategory) {
                    category = state.category;
                  }
                },
                builder: (context, state) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .057,
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorUtils.orange),
                        borderRadius: BorderRadius.circular(7)),
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        value: category,
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: ColorUtils.orange,
                        ),
                        style: textStyle.copyWith(
                            color: ColorUtils.orange,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        items: categoryName.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          context
                              .read<CategoriesCubit>()
                              .addRecipeSelectedCategory(newValue.toString());
                        },
                      ),
                    ),
                  );
                },
              ),
              SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02,
              ),
              title(
                  'Calorie',
                  Image.asset(
                    'assets/images/calorie.png',
                    fit: BoxFit.fill,
                    width: 22,
                    height: 22,
                  )),
              SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015,
              ),
              TextFieldWidget(
                focusNode: calorieNode,
                obsecure: false,
                keyboardType: TextInputType.text,
                width: MediaQuery.of(context).size.width * .9,
                height: MediaQuery.of(context).size.height * .057,
                controller: calorie,
                hintText: '132 Calorie',
                hintTextStyle: hintTextStyle.copyWith(fontSize: 15),
              ),
              SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015,
              ),
              IngredientsWidget(
                  ingredientNode: ingredientNode, ingredients: ingredients),
              SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015,
              ),
              StepsWidget(stepsNode: stepsNode, steps: steps),
              SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015,
              ),
              const AddRecipeVideoWidget(),
              SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015,
              ),
              Center(
                child: ButtonWidget(
                  width: MediaQuery.of(context).size.width * .8,
                  height: MediaQuery.of(context).size.height * .06,
                  borderRadius: 7,
                  text: 'Save',
                  style: textStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: ColorUtils.white),
                  onTap: () => Navigator.pushNamed(context, '/detailsScreen'),
                ),
              ),
              SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
