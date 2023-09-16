import 'package:flutter/material.dart';

class FooterImage extends StatelessWidget {
  const FooterImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .6,
          height: MediaQuery.of(context).size.height * .245,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/fruits.png',
                  ),
                  fit: BoxFit.fill)),
        ),
      ],
    );
  }
}
