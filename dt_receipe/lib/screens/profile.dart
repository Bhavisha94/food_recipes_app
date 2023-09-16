import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/recipe_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CheifProfile extends StatefulWidget {
  const CheifProfile({super.key});

  @override
  State<CheifProfile> createState() => _CheifProfileState();
}

class _CheifProfileState extends State<CheifProfile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .405,
              //height: 288,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/profile_bg.png'),
                      fit: BoxFit.fill)),
              child: Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .405,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .05),
                        const CircleAvatar(
                          backgroundColor: ColorUtils.transparent,
                          radius: 70,
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
                    top: MediaQuery.of(context).size.height * .04,
                    child: InkWell(
                      onTap: () => Navigator.pushNamed(context, '/editProfile'),
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .015),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .8,
                      child: Stack(
                        fit: StackFit.passthrough,
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Color(0xffADADAD), width: 2.0),
                              ),
                            ),
                          ),
                          TabBar(
                            isScrollable: false,
                            labelPadding: const EdgeInsets.only(bottom: 5),
                            tabs: const [
                              Text(
                                '50 Recipes',
                              ),
                              Text(
                                'Chef Info',
                              )
                            ],
                            indicatorColor: ColorUtils.brownText,
                            //unselectedLabelColor: const Color(0xffADADAD),

                            labelColor: ColorUtils.brownText,
                            indicatorSize: TabBarIndicatorSize.tab,
                            unselectedLabelStyle: textStyle.copyWith(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            labelStyle: textStyle.copyWith(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                        child: TabBarView(
                            children: [RecipeTabWidget(), SizedBox()]))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
