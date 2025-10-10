import 'package:json_annotation/json_annotation.dart';

part 'products_response_model.g.dart';

@JsonSerializable()
class ProductsResponseModel {
  @JsonKey(name: 'items')
  List<Product>? products;
  String? message;
  int? page;
  int? pageSize;
  int? totalCount;
  bool? hasNextPage;
  bool? hasPreviousPage;

  ProductsResponseModel({
    this.products, 
    this.message,
    this.page,
    this.pageSize,
    this.totalCount,
    this.hasNextPage,
    this.hasPreviousPage,
  });

  factory ProductsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseModelFromJson(json);
}

@JsonSerializable()
class Product {
  String? id;
  String? name;
  String? description;
  double? price;
  @JsonKey(name: 'coverPictureUrl')
  String? imageUrl;
  String? productCode;
  int? stock;
  double? weight;
  String? color;
  int? rating;
  int? reviewsCount;
  int? discountPercentage;
  String? sellerId;

  Product({
    this.id,
    this.name,
    this.description,
    this.price,
    this.imageUrl,
    this.productCode,
    this.stock,
    this.weight,
    this.color, 
    this.rating,
    this.reviewsCount,
    this.discountPercentage,
    this.sellerId,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

/*
{
    "items": [
        {
            "id": "68ad9d40-802a-42e2-9269-dafc9e7dd314",
            "productCode": "PRD-20251007-BA1985",
            "name": "smart dishwasher ",
            "description": "smart dishwasher",
            "arabicName": "غسالة أطباق بوش",
            "arabicDescription": "غسالة أطباق بوش",
            "coverPictureUrl": "https://cdn.mafrservices.com/sys-master-root/hfc/hb1/32680781611038/561732_main.jpg?im=Resize=400",
            "productPictures": null,
            "price": 200.00,
            "stock": 5,
            "weight": 9355.245,
            "color": "white",
            "rating": 3.3333333,
            "reviewsCount": 3,
            "discountPercentage": 20,
            "sellerId": "eab68d32-5f9c-4eb2-61c7-08ddccead94a",
            "categories": [
                "appliances"
            ]
        },
        {
            "id": "b40ba4f4-0c6d-44f5-b6fe-2229a0ecd402",
            "productCode": "PRD-20251007-25319D",
            "name": "green chaildren chair",
            "description": "green chaildren chair",
            "arabicName": "كرسى اطفال راتان من الهلال",
            "arabicDescription": "كرسى اطفال راتان من الهلال",
            "coverPictureUrl": "https://cdn.mafrservices.com/sys-master-root/h30/he2/9705498673182/468028_main.jpg?im=Resize=400",
            "productPictures": null,
            "price": 60.00,
            "stock": 50,
            "weight": 9355.245,
            "color": "green",
            "rating": 3.6666667,
            "reviewsCount": 3,
            "discountPercentage": 10,
            "sellerId": "eab68d32-5f9c-4eb2-61c7-08ddccead94a",
            "categories": [
                "furniture"
            ]
        },
    ],
    "page": 1,
    "pageSize": 10,
    "totalCount": 6,
    "hasNextPage": false,
    "hasPreviousPage": false
}
************************************************************************
{
    "statusCode": 400,
    "message": "One or more errors occurred!",
    "errors": {
        "serializerErrors": [
            "The input does not contain any JSON tokens. Expected the input to start with a valid JSON token, when isFinalBlock is true. LineNumber: 0 | BytePositionInLine: 0."
        ]
    }
}
*/
