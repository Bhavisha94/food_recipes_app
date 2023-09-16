import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final String? text;
  final double? borderRadius;
  final TextStyle? style;
  const ButtonWidget(
      {super.key,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.borderRadius,
      this.style});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: ColorUtils.orange,
            borderRadius: BorderRadius.circular(borderRadius ?? 25)),
        child: Center(
          child: Text(
            text.toString(),
            style: style ??
                textStyle.copyWith(
                    color: ColorUtils.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
