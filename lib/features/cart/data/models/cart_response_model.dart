import 'package:json_annotation/json_annotation.dart';

part 'cart_response_model.g.dart';

@JsonSerializable()
class CartResponseModel {
  @JsonKey(name: 'cartItems')
  List<CartItem>? items;
  String cartId;

  CartResponseModel({this.items, required this.cartId});

  factory CartResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CartResponseModelFromJson(json);
}

@JsonSerializable()
class CartItem {
  String itemId;
  String productId;
  String productName;
  @JsonKey(name: 'productCoverUrl')
  String productImageUrl;
  int productStock;
  double weightInGrams;
  int quantity;
  int discountPercentage;
  double basePricePerUnit;
  double finalPricePerUnit;
  double totalPrice;

  CartItem({
    required this.itemId,
    required this.productId,
    required this.productName,
    required this.productImageUrl,
    required this.productStock,
    required this.weightInGrams,
    required this.quantity,
    required this.discountPercentage,
    required this.basePricePerUnit,
    required this.finalPricePerUnit,
    required this.totalPrice,
  });

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}
/*
{
    "cartId": "f6e6cff8-590b-4630-80bc-cfe6649873d7",
    "cartItems": [
        {
            "itemId": "c7e66b39-fc87-4e25-b78c-27383ccc33d7",
            "productId": "c37be3e3-4535-48e5-8798-2f1bf356f4e2",
            "productName": "Boys Blue Denim Jacket with Contrast Collar",
            "productCoverUrl": "https://www.childrensalon.com/media/catalog/product/cache/0/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/l/e/levi-s-boys-blue-denim-jacket-with-contrast-collar-615114-a45c4848bb21d208b5972fa689a43c81.jpg",
            "productStock": 15,
            "weightInGrams": 0.600,
            "quantity": 2,
            "discountPercentage": 0,
            "basePricePerUnit": 35.00,
            "finalPricePerUnit": 35.00,
            "totalPrice": 70.00
        }
    ]
}
*/