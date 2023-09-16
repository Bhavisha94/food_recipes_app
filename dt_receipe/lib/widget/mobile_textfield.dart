import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/textfield.dart';
import 'package:flutter/material.dart';

class MobileTextField extends StatelessWidget {
  final double width;
  final TextEditingController controller;
  final FocusNode focusNode;
  const MobileTextField(
      {super.key,
      required this.width,
      required this.controller,
      required this.focusNode});

  @override
  Widget build(BuildContext context) {
    return TextFieldWidget(
      obsecure: false,
      width: width,
      height: MediaQuery.of(context).size.height * .06,
      controller: controller,
      keyboardType: TextInputType.phone,
      hintText: 'Mobile No',
      prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
          child: Image.asset(
            'assets/images/mobile.png',
            fit: BoxFit.fill,
          )),
      focusNode: focusNode,
      hintTextStyle: hintTextStyle,
    );
  }
}
