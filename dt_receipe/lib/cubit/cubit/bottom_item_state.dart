part of 'bottom_item_cubit.dart';

abstract class BottomItemState {}

class BottomItemInitial extends BottomItemState {
  final int selectedIndex;
  BottomItemInitial({required this.selectedIndex});
}
