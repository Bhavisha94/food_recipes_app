part of 'categories_cubit.dart';

abstract class CategoriesState {}

class CategoriesInitial extends CategoriesState {}

class AddRecipeCategory extends CategoriesState {
  final String category;
  AddRecipeCategory({required this.category});
}
