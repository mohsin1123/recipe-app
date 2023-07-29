import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:recipe_app/models/vegetarian_recipes_model.dart';

Future<VegetarianRecipesModel> getVegetarianRecipes() async {
  final response = await http.get(Uri.parse(
      "https://www.themealdb.com/api/json/v1/1/search.php?s=vegetarian"));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    return VegetarianRecipesModel.fromJson(data);
  } else {
    return VegetarianRecipesModel.fromJson(data);
  }
}
