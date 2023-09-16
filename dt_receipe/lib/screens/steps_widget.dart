import 'package:dt_receipe/screens/add_recipe_title_widget.dart';
import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/button.dart';
import 'package:dt_receipe/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StepsWidget extends StatelessWidget {
  final FocusNode stepsNode;
  final TextEditingController steps;
  const StepsWidget({super.key, required this.stepsNode, required this.steps});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 350,
      color: const Color(0xffFCFAFA),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015,
            ),
            title(
                'Steps',
                Image.asset(
                  'assets/images/ingredients.png',
                  width: 16,
                  height: 20.47,
                  fit: BoxFit.fill,
                )),
            SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundColor: ColorUtils.orange,
                  child: Center(
                    child: Text(
                      '1',
                      style: textStyle.copyWith(
                        fontSize: 16,
                        color: ColorUtils.white,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    TextFieldWidget(
                      focusNode: stepsNode,
                      width: MediaQuery.of(context).size.width * .8,
                      height: MediaQuery.of(context).size.height * .15,
                      controller: steps,
                      obsecure: false,
                      keyboardType: TextInputType.text,
                      maxLine: 5,
                      hintText: 'Enter Details',
                      hintTextStyle: hintTextStyle.copyWith(fontSize: 15),
                    ),
                    SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .8,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color(0xffECECEC),
                          borderRadius: BorderRadius.circular(7)),
                      child: Center(
                          child: SvgPicture.asset('assets/images/camera.svg')),
                    ),
                  ],
                ),
              ],
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
            SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015,
            ),
          ],
        ),
      ),
    );
  }
}
