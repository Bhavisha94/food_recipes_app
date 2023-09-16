import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:flutter/material.dart';

class SettingsItems extends StatelessWidget {
  final double iconWidth;
  final double iconHeigth;
  final String icon;
  final String text;
  final Function()? onTap;
  const SettingsItems(
      {super.key,
      required this.iconWidth,
      required this.iconHeigth,
      required this.icon,
      required this.text,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Image.asset(
        'assets/images/$icon.png',
        width: iconWidth,
        height: iconHeigth,
        fit: BoxFit.fill,
        filterQuality: FilterQuality.high,
      ),
      horizontalTitleGap: 5,
      title: Text(
        text,
        style: textStyle.copyWith(fontSize: 17, color: ColorUtils.orange),
      ),
    );
  }
}
