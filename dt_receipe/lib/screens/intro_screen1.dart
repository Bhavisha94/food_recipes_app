import 'package:flutter/material.dart';

class IntroScreen1 extends StatelessWidget {
  final PageController pageController;
  const IntroScreen1({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .75,
          height: MediaQuery.of(context).size.height * .35,
          child: Image.asset(
            'assets/images/cook.png',
            fit: BoxFit.fill,
          ),
        )
      ],
    );
  }
}
