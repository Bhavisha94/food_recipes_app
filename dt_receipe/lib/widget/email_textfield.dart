import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmailTextField extends StatelessWidget {
  final double width;
  final TextEditingController controller;
  final FocusNode focusNode;
  const EmailTextField(
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
      keyboardType: TextInputType.emailAddress,
      hintText: 'Email Id',
      prefixIcon: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SvgPicture.asset(
          'assets/images/email.svg',
          fit: BoxFit.fill,
        ),
      ),
      focusNode: focusNode,
      hintTextStyle: hintTextStyle,
    );
  }
}
