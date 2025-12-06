import 'package:json_annotation/json_annotation.dart';

part 'add_to_cart_request_body.g.dart';

@JsonSerializable()
class AddToCartRequestBody {
  final String productId;
  final int quantity;

  AddToCartRequestBody(this.quantity,  this.productId);

  Map<String, dynamic> toJson() => _$AddToCartRequestBodyToJson(this);
}
