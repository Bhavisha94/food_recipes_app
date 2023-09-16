import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/button.dart';
import 'package:dt_receipe/widget/confirm_password_textfield.dart';
import 'package:dt_receipe/widget/email_textfield.dart';
import 'package:dt_receipe/widget/footer_image.dart';
import 'package:dt_receipe/widget/logo.dart';
import 'package:dt_receipe/widget/mobile_textfield.dart';
import 'package:dt_receipe/widget/password_textfield.dart';
import 'package:dt_receipe/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  FocusNode emailFocusNode = FocusNode(),
      nameFocusNode = FocusNode(),
      mobileFocusNode = FocusNode(),
      pswFocusNode = FocusNode(),
      confirmPswFocusNode = FocusNode();

  TextEditingController name = TextEditingController(),
      email = TextEditingController(),
      mobile = TextEditingController(),
      password = TextEditingController(),
      confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bgColor,
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .04),
            const Logo(),
            TextFieldWidget(
              width: MediaQuery.of(context).size.width * .9,
              height: MediaQuery.of(context).size.height * .06,
              hintText: 'Name',
              obsecure: false,
              keyboardType: TextInputType.name,
              controller: name,
              prefixIcon: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                child: SvgPicture.asset(
                  'assets/images/account.svg',
                  fit: BoxFit.fill,
                ),
              ),
              focusNode: nameFocusNode,
              hintTextStyle: hintTextStyle,
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            EmailTextField(
              controller: email,
              focusNode: emailFocusNode,
              width: MediaQuery.of(context).size.width * .9,
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            MobileTextField(
                width: MediaQuery.of(context).size.width * .9,
                controller: mobile,
                focusNode: mobileFocusNode),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            PasswordTextField(
                width: MediaQuery.of(context).size.width * .9,
                controller: password,
                focusNode: pswFocusNode),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            ConfirmPasswordTextField(
                width: MediaQuery.of(context).size.width * .9,
                controller: confirmPassword,
                focusNode: confirmPswFocusNode),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            ButtonWidget(
                onTap: () => Navigator.pushReplacementNamed(context, '/login'),
                width: MediaQuery.of(context).size.width * .35,
                height: MediaQuery.of(context).size.height * 0.055,
                text: 'Signup'),
            const FooterImage(),
          ],
        ),
      ),
    );
  }
}
