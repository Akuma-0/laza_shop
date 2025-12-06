// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_item_count_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateItemCountResponseModel _$UpdateItemCountResponseModelFromJson(
  Map<String, dynamic> json,
) => UpdateItemCountResponseModel(
  message: json['message'] as String,
  itemId: json['id'] as String,
  productId: json['productId'] as String,
  quantity: (json['quantity'] as num).toInt(),
);

Map<String, dynamic> _$UpdateItemCountResponseModelToJson(
  UpdateItemCountResponseModel instance,
) => <String, dynamic>{
  'message': instance.message,
  'id': instance.itemId,
  'productId': instance.productId,
  'quantity': instance.quantity,
};
