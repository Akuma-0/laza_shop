import 'package:json_annotation/json_annotation.dart';

part 'add_to_cart_response_model.g.dart';

@JsonSerializable()
class AddToCartResponseModel {
  final String message;
  final String id;
  final String productId;
  final int quantity;

  AddToCartResponseModel({
    required this.message,
    required this.id,
    required this.productId,
    required this.quantity,
  });

  factory AddToCartResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AddToCartResponseModelFromJson(json);
}




/*
{
    "message": "Item added to cart successfully.",
    "id": "bd023480-6e90-4d84-943c-5903022f0970",
    "productId": "7e3db215-0b15-4ff8-a6cf-8cf9eb9b98ed",
    "quantity": 5
}
*/