import 'package:json_annotation/json_annotation.dart';

part 'update_item_count_request_body.g.dart';

@JsonSerializable()
class UpdateItemCountRequestBody {
  int quantity;
  UpdateItemCountRequestBody({required this.quantity});
  Map<String, dynamic> toJson() => _$UpdateItemCountRequestBodyToJson(this);
}