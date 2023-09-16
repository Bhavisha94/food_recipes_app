import 'dart:developer';

import 'package:dt_receipe/cubit/internet/cubit/check_internet_cubit.dart';
import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/button.dart';
import 'package:dt_receipe/widget/email_textfield.dart';
import 'package:dt_receipe/widget/footer_image.dart';
import 'package:dt_receipe/widget/logo.dart';
import 'package:dt_receipe/widget/password_textfield.dart';
import 'package:dt_receipe/widget/social_media_button.dart';
import 'package:dt_receipe/widget/text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  FocusNode emailFocusNode = FocusNode(), passwordFocusNode = FocusNode();
  TextEditingController email = TextEditingController(),
      password = TextEditingController();

  @override
  void initState() {
    log("Call");
    super.initState();
  }

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
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            EmailTextField(
                width: MediaQuery.of(context).size.width * .9,
                controller: email,
                focusNode: emailFocusNode),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            PasswordTextField(
                width: MediaQuery.of(context).size.width * .9,
                controller: password,
                focusNode: passwordFocusNode),
            SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButtonWidget(
                    text: 'Forget Password?',
                    textStyle: textStyle.copyWith(
                        fontSize: 13, color: const Color(0xff8D8D8D)),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            ButtonWidget(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/dashboard');
                  //  context.read<CheckInternetCubit>().checkInternet();
                },
                width: MediaQuery.of(context).size.width * .35,
                height: MediaQuery.of(context).size.height * 0.055,
                text: 'Login'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            Text(
              'Or',
              style: textStyle.copyWith(
                  fontSize: 13, color: const Color(0xff8D8D8D)),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SocialMedia(media: 'assets/images/google.png'),
                SizeUtils.horizontalSpacing(width: 15),
                const SocialMedia(media: 'assets/images/apple.png'),
              ],
            ),
            const FooterImage(),
          ],
        ),
      ),
    );
  }
}
