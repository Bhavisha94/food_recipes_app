import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .207,
      // height: 148,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/recipe.png'), fit: BoxFit.fill)),
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          width: MediaQuery.of(context).size.width * .3,
          height: MediaQuery.of(context).size.height * .032,
          //height: 23,
          decoration: const BoxDecoration(
              color: Color(0xffFE9F11),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(7),
                  bottomRight: Radius.circular(7))),
          child: Center(
            child: Text(
              'New Recipe',
              style: textStyle.copyWith(color: ColorUtils.brown, fontSize: 12),
            ),
          ),
        ),
      ),
    );
  }
}
