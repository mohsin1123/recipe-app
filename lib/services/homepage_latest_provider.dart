import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:recipe_app/models/home_page_model.dart';

Future<HomePageModel> getHomePageRecipes() async {
  final response = await http
      .get(Uri.parse("https://www.themealdb.com/api/json/v1/1/search.php?s=a"));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    return HomePageModel.fromJson(data);
  } else {
    return HomePageModel.fromJson(data);
  }
}
