part of 'chief_list_cubit.dart';

abstract class ChiefListState {}

class ChiefListInitial extends ChiefListState {}

class SelectedChief extends ChiefListState {
  final int index;
  SelectedChief({required this.index});
}
