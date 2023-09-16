part of 'meal_plan_cubit.dart';

abstract class MealPlanState {}

class MealPlanInitial extends MealPlanState {}

class SelectedDate extends MealPlanState {
  final int selectedIndex;
  SelectedDate({required this.selectedIndex});
}
