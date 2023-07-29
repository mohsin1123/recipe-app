import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:recipe_app/models/vegan_recipes_model.dart';

Future<VeganRecipesModel> getVeganRecipes() async {
  final response = await http.get(
      Uri.parse("https://www.themealdb.com/api/json/v1/1/search.php?s=vegan"));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    return VeganRecipesModel.fromJson(data);
  } else {
    return VeganRecipesModel.fromJson(data);
  }
}
