import 'package:flutter/material.dart';

class BgImageWidget extends StatelessWidget {
  final Widget child;
  const BgImageWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * .96,
        height: MediaQuery.of(context).size.height * 0.56,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg_img_color.png'),
                fit: BoxFit.fill)),
        child: child);
  }
}
