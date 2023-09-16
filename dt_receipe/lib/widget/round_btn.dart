import 'package:flutter/material.dart';

class RoundNextButton extends StatelessWidget {
  final VoidCallback onTap;
  const RoundNextButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .18,
        height: MediaQuery.of(context).size.height * .09,
        child: Image.asset(
          'assets/images/next_btn.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
