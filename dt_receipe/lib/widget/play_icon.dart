import 'package:dt_receipe/utils/colors.dart';
import 'package:flutter/material.dart';

class PlayWidget extends StatelessWidget {
  final VoidCallback? onTap;
  const PlayWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: const Center(
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Color.fromRGBO(0, 0, 0, 0.58),
          child: Center(
            child: Icon(
              Icons.play_arrow,
              color: ColorUtils.white,
              size: 45,
            ),
          ),
        ),
      ),
    );
  }
}
