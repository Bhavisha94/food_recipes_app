import 'dart:developer';

import 'package:dt_receipe/cubit/internet/cubit/check_internet_cubit.dart';
import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetConnection extends StatelessWidget {
  const InternetConnection({super.key});

  @override
  Widget build(BuildContext context) {
    log("Call build");
    return Scaffold(
      backgroundColor: ColorUtils.bgColor,
      body: BlocConsumer<CheckInternetCubit, CheckInternetState>(
        listener: (context, state) {
          if (state is CheckInternetConnection) {
            Navigator.pushReplacementNamed(context, '/intro');
          } else if (state is CheckInternetError) {}
        },
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/internet.png',
                width: MediaQuery.of(context).size.width,
                height: 297,
              ),
              Text(
                'No internet connection',
                style: textStyle.copyWith(
                    color: ColorUtils.orange,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .01),
              Text(
                'Checking the network cables, modem and router',
                style: textStyle.copyWith(
                    color: ColorUtils.textGrey, fontSize: 10),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .05),
              ButtonWidget(
                  onTap: () {
                    context.read<CheckInternetCubit>().checkInternet();
                  },
                  width: MediaQuery.of(context).size.width * .35,
                  height: MediaQuery.of(context).size.height * 0.055,
                  text: 'Retry'),
            ],
          );
        },
      ),
    );
  }
}
