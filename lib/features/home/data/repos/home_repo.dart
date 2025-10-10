import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../apis/home_api_services.dart';
import '../models/categories_response_model.dart';
import '../models/products_response_model.dart';

class HomeRepo {
  final HomeApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiResult<ProductsResponseModel>> getProducts(
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await _apiService.getProducts(
        'application/json',
        'application/json',
        body,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
  Future<ApiResult<CategoriesResponseModel>> getCategories(
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await _apiService.getCategories(
        'application/json',
        'application/json',
        body,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
