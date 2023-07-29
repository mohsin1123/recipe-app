import 'package:http/http.dart' as http;
import 'package:recipe_app/models/home_random_model.dart';
import 'dart:convert';

Future<HomeRandomModel> getHomeRandomFood() async {
  final response = await http
      .get(Uri.parse("https://www.themealdb.com/api/json/v1/1/search.php?s=s"));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    return HomeRandomModel.fromJson(data);
  } else {
    return HomeRandomModel.fromJson(data);
  }
}
