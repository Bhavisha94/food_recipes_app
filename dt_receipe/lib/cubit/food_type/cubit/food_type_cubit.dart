import 'package:flutter_bloc/flutter_bloc.dart';
part 'food_type_state.dart';

class FoodTypeCubit extends Cubit<FoodTypeState> {
  FoodTypeCubit() : super(FoodTypeInitial());

  type(String food) {
    emit(SelectedFoodType(type: food));
  }
}
