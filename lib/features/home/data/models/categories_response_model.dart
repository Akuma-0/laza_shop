import 'package:json_annotation/json_annotation.dart';

part 'categories_response_model.g.dart';

@JsonSerializable()
class CategoriesResponseModel {
List<Category>? categories;

  CategoriesResponseModel({
    this.categories,
  });

  factory CategoriesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseModelFromJson(json);
}

@JsonSerializable()
class Category {
  String? id;
  String? name;
  String? description;
  @JsonKey(name: 'coverPictureUrl')
  String? imageUrl;

  Category({
    this.id,
    this.name,
    this.description,
    this.imageUrl,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
  /*
  {
    "categories": [
        {
            "id": "b9603b97-c4f6-4847-b787-3fe4b2d2334f",
            "name": "gucci",
            "description": "Gucci — luxury fashion brand offering clothing and accessories.",
            "coverPictureUrl": "https://upload.wikimedia.org/wikipedia/commons/c/c5/Gucci_logo.svg"
        },
        {
            "id": "1235896c-85bc-4b6e-9b1b-4743694a0bca",
            "name": "balenciaga",
            "description": "Balenciaga — high-end fashion house known for avant-garde style.",
            "coverPictureUrl": "https://upload.wikimedia.org/wikipedia/commons/a/a0/Balenciaga_logo.svg"
        },
        }
  */