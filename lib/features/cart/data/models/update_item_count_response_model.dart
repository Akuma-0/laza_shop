import 'package:json_annotation/json_annotation.dart';

part 'update_item_count_response_model.g.dart';

@JsonSerializable()
class UpdateItemCountResponseModel {
  String message;
  @JsonKey(name: 'id')
  String itemId;
  String productId;
  int quantity;

  UpdateItemCountResponseModel({
    required this.message,
    required this.itemId,
    required this.productId,
    required this.quantity,
  });

  factory UpdateItemCountResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateItemCountResponseModelFromJson(json);
}



/*
{
    "message": "Item quantity updated successfully.",
    "id": "26d58e04-f31e-488c-bb85-3c4667a9f264",
    "productId": "7e3db215-0b15-4ff8-a6cf-8cf9eb9b98ed",
    "quantity": 14
}
*/