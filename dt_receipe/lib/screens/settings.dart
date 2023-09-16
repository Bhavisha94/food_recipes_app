import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/settings_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .335,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/setting_bg.png'),
                    fit: BoxFit.fill)),
            child: Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .335,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .05),
                      const CircleAvatar(
                        backgroundColor: ColorUtils.transparent,
                        radius: 50,
                        backgroundImage: AssetImage(
                          'assets/images/profile.png',
                        ),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .01),
                      Text(
                        'Bhoomi Patel',
                        style: textStyle.copyWith(
                            fontSize: 22,
                            color: ColorUtils.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .01),
                      Text(
                        'Master chef',
                        style: textStyle.copyWith(
                            fontSize: 12, color: ColorUtils.white),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: MediaQuery.of(context).size.width * .07,
                  top: MediaQuery.of(context).size.height * .03,
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(context, '/cheifProfile'),
                    child: SvgPicture.asset(
                      'assets/images/edit.svg',
                      width: 30,
                      height: 30,
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              ],
            ),
          ),
          SettingsItems(
            iconWidth: 22.2,
            iconHeigth: 19.73,
            icon: 'chef_icon',
            text: 'Become chef',
            onTap: () => Navigator.pushNamed(context, '/becomeChef'),
          ),
          const SettingsItems(
              iconWidth: 35.77,
              iconHeigth: 18.5,
              icon: 'about',
              text: 'About Us'),
          const SettingsItems(
              iconWidth: 24.67,
              iconHeigth: 25.9,
              icon: 'privacy',
              text: 'Privacy policy'),
          const SettingsItems(
              iconWidth: 22.2,
              iconHeigth: 24.67,
              icon: 'terms',
              text: 'Terms & Conditions'),
          SettingsItems(
            iconWidth: 22.2,
            iconHeigth: 22.2,
            icon: 'logout',
            text: 'Logout',
            onTap: () => Navigator.pushNamedAndRemoveUntil(
                context, '/login', (route) => false),
          )
        ],
      ),
    );
  }
}
