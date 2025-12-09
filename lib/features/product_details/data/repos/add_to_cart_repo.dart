import 'package:laza_shop/core/networking/api_services.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../models/add_to_cart_request_body.dart';
import '../models/add_to_cart_response_model.dart';

class AddToCartRepo {
  final ApiServices _apiServices;

  AddToCartRepo({required ApiServices apiServices})
    : _apiServices = apiServices;
  Future<ApiResult<AddToCartResponseModel>> addToCart(
    AddToCartRequestBody addToCartRequestBody,
  ) async {
    try {
      final response = await _apiServices.addToCart(
        'application/json',
        'application/json',
        addToCartRequestBody,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
