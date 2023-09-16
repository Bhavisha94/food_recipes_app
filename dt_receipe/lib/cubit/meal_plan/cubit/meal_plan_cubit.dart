import 'package:flutter_bloc/flutter_bloc.dart';

part 'meal_plan_state.dart';

class MealPlanCubit extends Cubit<MealPlanState> {
  MealPlanCubit() : super(MealPlanInitial());

  date(int index) {
    emit(SelectedDate(selectedIndex: index));
  }
}
