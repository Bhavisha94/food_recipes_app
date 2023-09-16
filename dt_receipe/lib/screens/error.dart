import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/logo.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bgColor,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .04),
            const Logo(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .2),
            Text(
              'ERROR',
              style: textStyle.copyWith(
                  fontSize: 16,
                  color: ColorUtils.brown,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
