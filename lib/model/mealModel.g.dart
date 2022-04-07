// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mealModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealModel _$MealModelFromJson(Map<String, dynamic> json) => MealModel(
      title: json['title'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$MealModelToJson(MealModel instance) => <String, dynamic>{
      'title': instance.title,
      'price': instance.price,
      'image': instance.image,
    };
