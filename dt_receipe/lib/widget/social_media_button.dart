import 'package:flutter/material.dart';

class SocialMedia extends StatelessWidget {
  final String media;
  final VoidCallback? onTap;
  const SocialMedia({super.key, required this.media, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 31,
        height: 31,
        child: Image.asset(
          media,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
