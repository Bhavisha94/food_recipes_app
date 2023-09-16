import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final VoidCallback? callback;
  final TextAlign? textAlign;
  const TextButtonWidget(
      {super.key,
      required this.text,
      required this.textStyle,
      this.callback,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: callback,
        child: Text(
          text,
          textAlign: textAlign,
          style: textStyle,
        ));
  }
}
