import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

searchAppbar({required String text}) {
  return AppBar(
    backgroundColor: ColorUtils.bgColor,
    elevation: 0,
    iconTheme: const IconThemeData(color: ColorUtils.brownText),
    titleSpacing: 0,
    title: Row(
      children: [
        Text(
          text,
          style: textStyle.copyWith(
              color: ColorUtils.brownText,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        SizeUtils.horizontalSpacing(width: 10),
        Image.asset(
          'assets/images/chef.png',
          fit: BoxFit.fill,
          width: 23,
          height: 26,
        ),
      ],
    ),
    actions: [
      SvgPicture.asset(
        'assets/images/search.svg',
      ),
      SizeUtils.horizontalSpacing(width: 10),
    ],
  );
  // return Row(
  //   children: [
  //     Text(
  //       text,
  //       style: textStyle.copyWith(
  //           color: ColorUtils.brownText,
  //           fontSize: 22,
  //           fontWeight: FontWeight.bold),
  //     ),
  //     SizeUtils.horizontalSpacing(width: 10),
  //     Image.asset(
  //       'assets/images/chef.png',
  //       fit: BoxFit.fill,
  //       width: 23,
  //       height: 26,
  //     ),
  //     const Spacer(),
  //     SvgPicture.asset(
  //       'assets/images/search.svg',
  //       width: 16,
  //       height: 16,
  //       fit: BoxFit.fill,
  //     ),
  //   ],
  // );
}
