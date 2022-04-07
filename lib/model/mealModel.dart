import 'package:json_annotation/json_annotation.dart';

part 'mealModel.g.dart';

@JsonSerializable()
class MealModel {
  // String _id;
  String? title;
  String? price;
  String? image;

  MealModel({this.title, this.price, this.image});

  factory MealModel.fromJson(Map<String, dynamic> json) =>
      _$MealModelFromJson(json);
  Map<String, dynamic> toJson() => _$MealModelToJson(this);
}
