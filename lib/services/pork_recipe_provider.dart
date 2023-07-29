import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:recipe_app/models/pork_recipes_model.dart';

Future<PorkRecipesModel> getPorkRecipes() async {
  final response = await http.get(
      Uri.parse("https://www.themealdb.com/api/json/v1/1/search.php?s=pork"));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    return PorkRecipesModel.fromJson(data);
  } else {
    return PorkRecipesModel.fromJson(data);
  }
}
