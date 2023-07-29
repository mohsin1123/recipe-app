import 'package:http/http.dart' as http;
import 'package:recipe_app/models/breakfast_recipes_model.dart';
import 'dart:convert';

Future<BreakfastRecipesModel> getBreakfastRecipes() async {
  final response = await http.get(Uri.parse(
      "https://www.themealdb.com/api/json/v1/1/search.php?s=breakfast"));
  var data = jsonDecode(response.body.toString());

  if (response.statusCode == 200) {
    return BreakfastRecipesModel.fromJson(data);
  } else {
    return BreakfastRecipesModel.fromJson(data);
  }
}
