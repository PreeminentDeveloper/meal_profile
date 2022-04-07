// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listMealModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListMealModel _$ListMealModelFromJson(Map<String, dynamic> json) =>
    ListMealModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => MealModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListMealModelToJson(ListMealModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
