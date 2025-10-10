// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsResponseModel _$ProductsResponseModelFromJson(
  Map<String, dynamic> json,
) => ProductsResponseModel(
  products: (json['items'] as List<dynamic>?)
      ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
  page: (json['page'] as num?)?.toInt(),
  pageSize: (json['pageSize'] as num?)?.toInt(),
  totalCount: (json['totalCount'] as num?)?.toInt(),
  hasNextPage: json['hasNextPage'] as bool?,
  hasPreviousPage: json['hasPreviousPage'] as bool?,
);

Map<String, dynamic> _$ProductsResponseModelToJson(
  ProductsResponseModel instance,
) => <String, dynamic>{
  'items': instance.products,
  'message': instance.message,
  'page': instance.page,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'hasNextPage': instance.hasNextPage,
  'hasPreviousPage': instance.hasPreviousPage,
};

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
  id: json['id'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  price: (json['price'] as num?)?.toDouble(),
  imageUrl: json['coverPictureUrl'] as String?,
  productCode: json['productCode'] as String?,
  stock: (json['stock'] as num?)?.toInt(),
  weight: (json['weight'] as num?)?.toDouble(),
  color: json['color'] as String?,
  rating: (json['rating'] as num?)?.toInt(),
  reviewsCount: (json['reviewsCount'] as num?)?.toInt(),
  discountPercentage: (json['discountPercentage'] as num?)?.toInt(),
  sellerId: json['sellerId'] as String?,
);

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'price': instance.price,
  'coverPictureUrl': instance.imageUrl,
  'productCode': instance.productCode,
  'stock': instance.stock,
  'weight': instance.weight,
  'color': instance.color,
  'rating': instance.rating,
  'reviewsCount': instance.reviewsCount,
  'discountPercentage': instance.discountPercentage,
  'sellerId': instance.sellerId,
};
