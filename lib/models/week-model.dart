import 'package:meal_app/models/Ingredient-model.dart';
import 'package:meal_app/models/day-model.dart';
import 'package:meal_app/models/meal-model.dart';
import 'package:meal_app/models/plan-model.dart';

class WeekModel {

  final int id;
  final String name;
  final List<DayModel> days;

WeekModel({
  this.id,
  this.name,
  this.days
});
  
}

List<IngredientModel>ingredientsList = [
  IngredientModel(
    id: 1,
    name: "huevos",
    quantity: "2",
    calories: "2.0",
    description: "huevos enteros",
    fat: "20",
    hdc: "0",
    proteins: "2.4"
  ),
    IngredientModel(
    id: 2,
    name: "claras huevos",
    quantity: "4",
    calories: "2.0",
    description: "clara de huevos",
    fat: "20",
    hdc: "0",
    proteins: "2.4"
  ),
    IngredientModel(
    id: 3,
    name: "jamon",
    quantity: "2",
    calories: "2.0",
    description: "slice",
    fat: "20",
    hdc: "0",
    proteins: "2.4"
  ),

];


PlanModel monday = PlanModel(
      id: 1,
      meal: MealModel(
        id: 1,
        name: "huevos con jamon de pavo",
        ingredients: ingredientsList)
      );


List<WeekModel> weeks = [
  WeekModel(
    id: 1,
    name: "week 1",
    days: [
      DayModel(
        id: 1,
        name: "Monday",
        plan: monday
      )
    ]
    )
];