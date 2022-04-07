import 'package:json_annotation/json_annotation.dart';
import 'package:meal_profile/model/mealModel.dart';

part 'listMealModel.g.dart';

@JsonSerializable()
class ListMealModel {
  List<MealModel>? data;

  ListMealModel({this.data});

  factory ListMealModel.fromJson(Map<String, dynamic> json) =>
      _$ListMealModelFromJson(json);
  Map<String, dynamic> toJson() => _$ListMealModelToJson(this);
}
