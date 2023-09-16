import 'package:dt_receipe/screens/add_recipe_title_widget.dart';
import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/button.dart';
import 'package:dt_receipe/widget/textfield.dart';
import 'package:flutter/material.dart';

class IngredientsWidget extends StatelessWidget {
  final FocusNode ingredientNode;
  final TextEditingController ingredients;
  const IngredientsWidget(
      {super.key, required this.ingredientNode, required this.ingredients});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .22,
      color: const Color(0xffFCFAFA),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          title(
              'Ingredients',
              Image.asset(
                'assets/images/ingredients.png',
                width: 16,
                height: 20.47,
                fit: BoxFit.fill,
              )),
          SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .015,
          ),
          TextFieldWidget(
            obsecure: false,
            keyboardType: TextInputType.text,
            focusNode: ingredientNode,
            width: MediaQuery.of(context).size.width * .9,
            height: MediaQuery.of(context).size.height * .057,
            controller: ingredients,
            hintText: 'Enter ingredient...',
            hintTextStyle: hintTextStyle.copyWith(fontSize: 15),
          ),
          const Spacer(),
          Center(
            child: ButtonWidget(
              width: MediaQuery.of(context).size.width * .85,
              height: MediaQuery.of(context).size.height * .06,
              borderRadius: 7,
              text: 'Add More +',
              style: textStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: ColorUtils.white),
            ),
          ),
        ],
      ),
    );
  }
}
