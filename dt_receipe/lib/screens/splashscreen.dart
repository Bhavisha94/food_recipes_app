import 'dart:async';
import 'dart:io';
import 'dart:developer';

import 'package:dt_receipe/cubit/internet/cubit/check_internet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  late StreamSubscription subscription;
  var isDevideConnected = false;
  bool isAlertSet = false;
  @override
  void initState() {
    context.read<CheckInternetCubit>().checkInternet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CheckInternetCubit, CheckInternetState>(
        listener: (context, state) {
          if (state is CheckInternetConnection) {
            navigate();
          } else if (state is CheckInternetError) {
            Navigator.pushReplacementNamed(context, '/internet');
          }
        },
        builder: (context, state) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/splash.png'),
                    fit: BoxFit.fill)),
          );
        },
      ),
    );
  }

  navigate() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.pushReplacementNamed(context, '/intro');
    });
  }

  checkInternet() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        navigate();
      }
    } on SocketException catch (e) {
      log(e.toString());
      Navigator.pushNamed(context, '/internet');
    }
  }
}
