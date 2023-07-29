import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:recipe_app/models/beef_recipes_model.dart';

Future<BeefRecipesModel> getSearchResults({String? query}) async {
  final response = await http.get(
      Uri.parse("https://www.themealdb.com/api/json/v1/1/search.php?s=$query"));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    return BeefRecipesModel.fromJson(data);
  } else {
    return BeefRecipesModel.fromJson(data);
  }
}
