import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:recipe_app/models/lamb_recipes_model.dart';

Future<LambRecipesModel> getLambRecipes() async {
  final response = await http.get(
      Uri.parse("https://www.themealdb.com/api/json/v1/1/search.php?s=lamb"));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    return LambRecipesModel.fromJson(data);
  } else {
    return LambRecipesModel.fromJson(data);
  }
}
