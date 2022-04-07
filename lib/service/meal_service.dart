import 'dart:convert';
import 'package:http/http.dart';

class MealService {
  static const String _baseUrl =
      "https://storage.googleapis.com/ember-deploy.appspot.com/images/open-source.json";
  Future fetchMeal() async {
    try {
      final response = await get(Uri.parse(_baseUrl));
      final json = jsonDecode(response.body);
      return json;
    } catch (e) {
      print("Error: ${e.toString()}");
    }
  }
}
