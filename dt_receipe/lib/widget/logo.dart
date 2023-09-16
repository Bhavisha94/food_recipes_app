import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      height: MediaQuery.of(context).size.height * .3,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/logo.png',
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}
