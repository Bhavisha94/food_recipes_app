part of 'recipe_list_cubit.dart';

abstract class RecipeListState {}

class RecipeListInitial extends RecipeListState {}

class ChangeListPosition extends RecipeListState {
  final int pageNo;
  ChangeListPosition({required this.pageNo});
}
