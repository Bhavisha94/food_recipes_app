import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/button.dart';
import 'package:dt_receipe/widget/email_textfield.dart';
import 'package:dt_receipe/widget/mobile_textfield.dart';
import 'package:dt_receipe/widget/password_textfield.dart';
import 'package:dt_receipe/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController name = TextEditingController(),
      email = TextEditingController(),
      password = TextEditingController(),
      mobile = TextEditingController();
  FocusNode nameFocuNode = FocusNode(),
      emailFocusNode = FocusNode(),
      mobileFocusNode = FocusNode(),
      pswFocusNode = FocusNode();

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
                        'Edit Profile',
                        style: textStyle.copyWith(
                            color: ColorUtils.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600),
                      ),
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
              height: MediaQuery.of(context).size.height * .04),
          TextFieldWidget(
            width: MediaQuery.of(context).size.width * .8,
            height: MediaQuery.of(context).size.height * .06,
            hintText: 'Name',
            obsecure: false,
            keyboardType: TextInputType.name,
            hintTextStyle: hintTextStyle,
            controller: name,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
              child: SvgPicture.asset(
                'assets/images/account.svg',
                fit: BoxFit.fill,
              ),
            ),
            focusNode: nameFocuNode,
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01),
          EmailTextField(
            controller: email,
            focusNode: emailFocusNode,
            width: MediaQuery.of(context).size.width * .8,
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01),
          MobileTextField(
              width: MediaQuery.of(context).size.width * .8,
              controller: mobile,
              focusNode: mobileFocusNode),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01),
          PasswordTextField(
              width: MediaQuery.of(context).size.width * .8,
              controller: password,
              focusNode: pswFocusNode),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .05),
          ButtonWidget(
              onTap: () {},
              width: MediaQuery.of(context).size.width * .35,
              height: MediaQuery.of(context).size.height * 0.05,
              text: 'Save'),
        ],
      ),
    );
  }
}
