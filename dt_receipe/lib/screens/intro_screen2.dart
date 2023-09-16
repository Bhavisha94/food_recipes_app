import 'package:dt_receipe/utils/size.dart';
import 'package:flutter/material.dart';

class IntroScreen2 extends StatelessWidget {
  final PageController pageController;
  const IntroScreen2({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .08),
        SizedBox(
            width: MediaQuery.of(context).size.width * .8,
            height: MediaQuery.of(context).size.height * .32,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(
                'assets/images/food1.png',
                fit: BoxFit.fill,
              ),
            ))
      ],
    );
  }
}
