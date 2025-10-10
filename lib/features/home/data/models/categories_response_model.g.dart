// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesResponseModel _$CategoriesResponseModelFromJson(
  Map<String, dynamic> json,
) => CategoriesResponseModel(
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CategoriesResponseModelToJson(
  CategoriesResponseModel instance,
) => <String, dynamic>{'categories': instance.categories};

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
  id: json['id'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  imageUrl: json['coverPictureUrl'] as String?,
);

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'coverPictureUrl': instance.imageUrl,
};
