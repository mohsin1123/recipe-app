import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:recipe_app/models/miscellaneous_recipe_model.dart';

Future<MiscellaneousRecipeModel> getMiscelleneousRecipes() async {
  final response = await http
      .get(Uri.parse("https://www.themealdb.com/api/json/v1/1/search.php?s=m"));
  var data = jsonDecode(response.body.toString());

  if (response.statusCode == 200) {
    return MiscellaneousRecipeModel.fromJson(data);
  } else {
    return MiscellaneousRecipeModel.fromJson(data);
  }
}
