import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/email_textfield.dart';
import 'package:dt_receipe/widget/mobile_textfield.dart';
import 'package:dt_receipe/widget/confirm_password_textfield.dart';
import 'package:dt_receipe/widget/password_textfield.dart';
import 'package:dt_receipe/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BecomeChefScreen extends StatefulWidget {
  const BecomeChefScreen({super.key});

  @override
  State<BecomeChefScreen> createState() => _BecomeChefScreenState();
}

class _BecomeChefScreenState extends State<BecomeChefScreen> {
  TextEditingController name = TextEditingController(),
      address = TextEditingController(),
      email = TextEditingController(),
      mobile = TextEditingController(),
      password = TextEditingController(),
      confirmPassword = TextEditingController();
  FocusNode nameNode = FocusNode(),
      addressNode = FocusNode(),
      emailNode = FocusNode(),
      mobileNode = FocusNode(),
      passwordNode = FocusNode(),
      confirmPassNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .38,
            //height: 271,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/chef_bg.png'),
                    fit: BoxFit.fill)),
            child: Column(
              children: [
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  titleSpacing: 0,
                  title: Row(
                    children: [
                      Text(
                        'Become chef',
                        style: textStyle.copyWith(
                            color: ColorUtils.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600),
                      ),
                      SizeUtils.horizontalSpacing(
                          width: MediaQuery.of(context).size.width * .02),
                      Image.asset(
                        'assets/images/cap.png',
                        width: 22,
                        height: 22,
                        fit: BoxFit.fill,
                      )
                    ],
                  ),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .03),
                SizedBox(
                  width: 140,
                  height: 140,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 140,
                        height: 140,
                        child: Image.asset(
                          'assets/images/become_chef.png',
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 4,
                        child: InkWell(
                          onTap: () => Navigator.pushNamed(context, '/cheif'),
                          child: SvgPicture.asset(
                            'assets/images/pen1.svg',
                            width: 35,
                            height: 35,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01),
          TextFieldWidget(
            width: MediaQuery.of(context).size.width * .8,
            height: MediaQuery.of(context).size.height * .06,
            controller: name,
            focusNode: nameNode,
            hintText: 'Chef Name',
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
              child: SvgPicture.asset(
                'assets/images/account.svg',
                fit: BoxFit.fill,
              ),
            ),
            hintTextStyle: hintTextStyle,
            obsecure: false,
            keyboardType: TextInputType.name,
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01),
          TextFieldWidget(
              width: MediaQuery.of(context).size.width * .8,
              height: MediaQuery.of(context).size.height * .105,
              controller: address,
              focusNode: addressNode,
              hintTextStyle: hintTextStyle,
              keyboardType: TextInputType.multiline,
              maxLine: 3,
              hintText: 'Address',
              obsecure: false,
              prefixIcon: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * .05),
                child: SizedBox(
                  width: 15,
                  height: 19,
                  // child: Icon(
                  //   Icons.location_on_outlined,
                  //   color: ColorUtils.textGrey,
                  //   size: 25,
                  // ),
                  child: Image.asset('assets/images/location.png'),
                ),
              )),
          EmailTextField(
            controller: email,
            focusNode: emailNode,
            width: MediaQuery.of(context).size.width * .8,
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01),
          MobileTextField(
              width: MediaQuery.of(context).size.width * .8,
              controller: mobile,
              focusNode: mobileNode),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01),
          PasswordTextField(
              width: MediaQuery.of(context).size.width * .8,
              controller: password,
              focusNode: passwordNode),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01),
          ConfirmPasswordTextField(
              width: MediaQuery.of(context).size.width * .8,
              controller: confirmPassword,
              focusNode: confirmPassNode)
        ],
      ),
    );
  }
}
