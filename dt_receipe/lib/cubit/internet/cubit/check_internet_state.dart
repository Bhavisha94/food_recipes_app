part of 'check_internet_cubit.dart';

abstract class CheckInternetState {}

class CheckInternetInitial extends CheckInternetState {}

class CheckConnectionLoading extends CheckInternetState {}

class CheckInternetConnection extends CheckInternetState {
  final bool isAlertSet;
  CheckInternetConnection({required this.isAlertSet});
}

class CheckInternetError extends CheckInternetState {}
