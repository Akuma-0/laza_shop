// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartResponseModel _$CartResponseModelFromJson(Map<String, dynamic> json) =>
    CartResponseModel(
      items: (json['cartItems'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      cartId: json['cartId'] as String,
    );

Map<String, dynamic> _$CartResponseModelToJson(CartResponseModel instance) =>
    <String, dynamic>{'cartItems': instance.items, 'cartId': instance.cartId};

CartItem _$CartItemFromJson(Map<String, dynamic> json) => CartItem(
  itemId: json['itemId'] as String,
  productId: json['productId'] as String,
  productName: json['productName'] as String,
  productImageUrl: json['productCoverUrl'] as String,
  productStock: (json['productStock'] as num).toInt(),
  weightInGrams: (json['weightInGrams'] as num).toDouble(),
  quantity: (json['quantity'] as num).toInt(),
  discountPercentage: (json['discountPercentage'] as num).toInt(),
  basePricePerUnit: (json['basePricePerUnit'] as num).toDouble(),
  finalPricePerUnit: (json['finalPricePerUnit'] as num).toDouble(),
  totalPrice: (json['totalPrice'] as num).toDouble(),
);

Map<String, dynamic> _$CartItemToJson(CartItem instance) => <String, dynamic>{
  'itemId': instance.itemId,
  'productId': instance.productId,
  'productName': instance.productName,
  'productCoverUrl': instance.productImageUrl,
  'productStock': instance.productStock,
  'weightInGrams': instance.weightInGrams,
  'quantity': instance.quantity,
  'discountPercentage': instance.discountPercentage,
  'basePricePerUnit': instance.basePricePerUnit,
  'finalPricePerUnit': instance.finalPricePerUnit,
  'totalPrice': instance.totalPrice,
};
