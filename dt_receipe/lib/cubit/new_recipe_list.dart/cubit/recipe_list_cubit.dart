import 'package:flutter_bloc/flutter_bloc.dart';
part 'recipe_list_state.dart';

class RecipeListCubit extends Cubit<RecipeListState> {
  RecipeListCubit() : super(RecipeListInitial());

  change(int pageNo) {
    emit(ChangeListPosition(pageNo: pageNo));
  }
}
