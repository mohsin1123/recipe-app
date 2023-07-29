import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:recipe_app/models/pasta_model_recipe.dart';

Future<PastaModelRecipe> getPastaRecipe() async {
  final response = await http.get(
      Uri.parse("https://www.themealdb.com/api/json/v1/1/search.php?s=pasta"));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    return PastaModelRecipe.fromJson(data);
  } else {
    return PastaModelRecipe.fromJson(data);
  }
}
