import 'package:flutter/material.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/widget/divider_widget.dart';

class AddCommentTextField extends StatelessWidget {
  const AddCommentTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .06,
          decoration: BoxDecoration(
              color: const Color(0xffF2F2F2),
              borderRadius: BorderRadius.circular(21)),
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.only(left: 10, bottom: 5),
                    hintText: 'Your Recipe is wonderfull',
                    hintStyle: hintTextStyle.copyWith(
                      color: const Color(
                        0xffA7A7A7,
                      ),
                      fontSize: 14,
                    )),
              )),
              SizeUtils.horizontalSpacing(width: 10),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Image.asset(
                  'assets/images/send.png',
                  width: 38,
                  height: 38,
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .015),
        MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    dense: true,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 0.0),
                    minVerticalPadding: 0,
                    leading: Image.asset(
                      'assets/images/become_chef.png',
                      width: 35,
                      height: 35,
                      fit: BoxFit.fill,
                    ),
                    horizontalTitleGap: 1,
                    title: Text(
                      'Isabella',
                      style: textStyle.copyWith(
                          color: const Color(
                            0xffA7A7A7,
                          ),
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      'Your Recipe is wonderfull',
                      style: textStyle.copyWith(
                          color: ColorUtils.textGrey, fontSize: 13),
                    ),
                  ),
                  const DividerWidget(),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
