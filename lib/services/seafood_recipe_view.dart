import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:recipe_app/models/seafood_recipe_model.dart';

Future<SeafoodRecipeModel> getSeafoodRecipes() async {
  final response = await http.get(Uri.parse(
      "https://www.themealdb.com/api/json/v1/1/search.php?s=seafood"));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    return SeafoodRecipeModel.fromJson(data);
  } else {
    return SeafoodRecipeModel.fromJson(data);
  }
}
