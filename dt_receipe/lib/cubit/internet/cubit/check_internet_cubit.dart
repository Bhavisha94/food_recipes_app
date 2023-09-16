import 'dart:async';
import 'dart:developer';
import 'dart:io';

// import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';

part 'check_internet_state.dart';

class CheckInternetCubit extends Cubit<CheckInternetState> {
  CheckInternetCubit() : super(CheckInternetInitial());

  late StreamSubscription streamSubscription;
  bool isDeviceConnected = false;
  bool isAlertSet = false;

  checkConnection() {
    emit(CheckConnectionLoading());
    // isAlertSet = false;
    // streamSubscription =
    //     Connectivity().onConnectivityChanged.listen((result) async {
    //   //isDeviceConnected = await InternetConnectionChecker().hasConnection;
    //   if (!isDeviceConnected && isAlertSet == false) {
    //     isAlertSet = true;
    //     log(isAlertSet.toString());
    //     emit(CheckInternetConnection(isAlertSet: isAlertSet));
    //   }
    // });
  }

  checkInternet() async {
    try {
      emit(CheckConnectionLoading());
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        emit(CheckInternetConnection(isAlertSet: true));
      }
    } on SocketException catch (e) {
      log(e.toString());
      emit(CheckInternetError());
    }
  }
}
