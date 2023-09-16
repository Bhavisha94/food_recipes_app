import 'package:dt_receipe/utils/colors.dart';
import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: ColorUtils.textGrey,
    );
  }
}
