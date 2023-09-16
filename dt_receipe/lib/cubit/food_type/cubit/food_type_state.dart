part of 'food_type_cubit.dart';

abstract class FoodTypeState {}

class FoodTypeInitial extends FoodTypeState {}

class SelectedFoodType extends FoodTypeState {
  final String type;
  SelectedFoodType({required this.type});
}
