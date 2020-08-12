import 'package:meal_app/models/Ingredient-model.dart';

class MealModel {
  final int id;
  final String name;
  final List<IngredientModel> ingredients;

  MealModel({
    this.id,
    this.name,
    this.ingredients
  });
}