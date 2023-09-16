import 'package:dt_receipe/cubit/intro_screen/cubit/intro_screen_cubit.dart';
import 'package:dt_receipe/screens/intro_screen1.dart';
import 'package:dt_receipe/screens/intro_screen2.dart';
import 'package:dt_receipe/screens/intro_screen3.dart';
import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/bg_img.dart';
import 'package:dt_receipe/widget/round_btn.dart';
import 'package:dt_receipe/widget/text_button.dart';
import 'package:dt_receipe/widget/textspan_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreens extends StatefulWidget {
  const IntroScreens({super.key});

  @override
  State<IntroScreens> createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  PageController controller = PageController(initialPage: 0);
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bgColor,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: BlocConsumer<IntroScreenCubit, IntroScreenState>(
          listener: (context, state) {
            if (state is IntroScreenInitial) {
              page = state.page;
            }
          },
          builder: (context, state) {
            return Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .56,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BgImageWidget(
                          child: PageView(
                        reverse: false,
                        controller: controller,
                        children: [
                          IntroScreen1(pageController: controller),
                          IntroScreen2(pageController: controller),
                          IntroScreen3(pageController: controller)
                        ],
                        onPageChanged: (value) {
                          page = value;
                          context.read<IntroScreenCubit>().pageIndex(value);
                        },
                      ))
                    ],
                  ),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .03),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .1,
                        height: MediaQuery.of(context).size.height * .03,
                        child: SmoothPageIndicator(
                          controller: controller,
                          count: 3,
                          effect: const WormEffect(
                              dotWidth: 11,
                              dotHeight: 11,
                              spacing: 4,
                              activeDotColor: ColorUtils.orange,
                              dotColor: ColorUtils.brown),
                        ),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .03),
                      page == 0
                          ? const TextSpanWidget(
                              text1: 'Read ',
                              text2: 'the recipe \nand make ',
                              text3: 'delicious food')
                          : page == 1
                              ? const TextSpanWidget(
                                  text1: 'Eat Food ',
                                  text2: 'that \nIs Healthy ',
                                  text3: 'For you')
                              : const TextSpanWidget(
                                  text1: 'Get all ',
                                  text2: 'healthy recipes \nthat ',
                                  text3: 'you need'),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .05),
                      RoundNextButton(
                        onTap: () {
                          page == 2
                              ? Navigator.pushReplacementNamed(
                                  context, '/signUp')
                              : controller.nextPage(
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeIn);
                        },
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .03),
                      TextButtonWidget(
                        text: page == 2 ? 'Finish' : 'Skip',
                        textStyle: textStyle.copyWith(
                            color: ColorUtils.orange,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        callback: () => page == 2
                            ? Navigator.pushReplacementNamed(context, '/signUp')
                            : controller.nextPage(
                                duration: const Duration(milliseconds: 1000),
                                curve: Curves.easeIn),
                      )
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
