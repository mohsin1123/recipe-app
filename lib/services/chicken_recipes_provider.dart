import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:recipe_app/models/chicken_recipes_model.dart';

Future<ChickenRecipesModel> getChickenRecipes() async {
  final response = await http.get(Uri.parse(
      "https://www.themealdb.com/api/json/v1/1/search.php?s=Chicken"));
  var data = jsonDecode(response.body.toString());

  if (response.statusCode == 200) {
    return ChickenRecipesModel.fromJson(data);
  } else {
    return ChickenRecipesModel.fromJson(data);
  }
}
