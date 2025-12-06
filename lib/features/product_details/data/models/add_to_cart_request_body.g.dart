// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToCartRequestBody _$AddToCartRequestBodyFromJson(
  Map<String, dynamic> json,
) => AddToCartRequestBody(
  (json['quantity'] as num).toInt(),
  json['productId'] as String,
);

Map<String, dynamic> _$AddToCartRequestBodyToJson(
  AddToCartRequestBody instance,
) => <String, dynamic>{
  'productId': instance.productId,
  'quantity': instance.quantity,
};
