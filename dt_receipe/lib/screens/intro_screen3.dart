import 'package:dt_receipe/utils/size.dart';
import 'package:flutter/material.dart';

class IntroScreen3 extends StatelessWidget {
  final PageController pageController;
  const IntroScreen3({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .02),
        SizedBox(
            width: MediaQuery.of(context).size.width * .78,
            height: MediaQuery.of(context).size.height * .39,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(
                'assets/images/food2.png',
                fit: BoxFit.fill,
              ),
            ))
      ],
    );
  }
}
