import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PasswordTextField extends StatelessWidget {
  final double width;
  final TextEditingController controller;
  final FocusNode focusNode;
  const PasswordTextField(
      {super.key,
      required this.width,
      required this.controller,
      required this.focusNode});

  @override
  Widget build(BuildContext context) {
    return TextFieldWidget(
      obsecure: true,
      width: width,
      height: MediaQuery.of(context).size.height * .06,
      maxLine: 1,
      hintText: 'Password',
      controller: controller,
      prefixIcon: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: SvgPicture.asset(
          'assets/images/lock.svg',
          fit: BoxFit.fill,
        ),
      ),
      focusNode: focusNode,
      hintTextStyle: hintTextStyle,
    );
  }
}
