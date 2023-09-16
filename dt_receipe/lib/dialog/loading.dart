import 'package:dt_receipe/utils/colors.dart';
import 'package:flutter/material.dart';

showLoadingDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return const Center(
        child: CircularProgressIndicator(
          color: ColorUtils.orange,
        ),
      );
    },
  );
}
