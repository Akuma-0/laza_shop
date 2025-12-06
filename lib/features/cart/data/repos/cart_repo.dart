import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../apis/cart_api_services.dart';
import '../models/cart_response_model.dart';

class CartRepo {
  final CartApiServices _apiService;
  CartRepo(this._apiService);
  Future<ApiResult<CartResponseModel>> getCartItems(Map map) async {
    try {
      final response = await _apiService.getCartItems(
        'application/json',
        'application/json',
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
  Future<ApiResult<void>> deleteCartItem(String itemId) async {
    try {
      final response = await _apiService.deleteCartItem(
        itemId,
        'application/json',
        'application/json',
        {},
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
