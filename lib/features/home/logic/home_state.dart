import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/networking/api_error_handler.dart';
import '../data/models/categories_response_model.dart';
import '../data/models/products_response_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // Products
  const factory HomeState.productsLoading() = ProductsLoading;
  const factory HomeState.productsLoadingMore() = ProductsLoadingMore;
  const factory HomeState.productsSuccess(  
    List<Product?>? productsDataList,
  ) = ProductsSuccess;
  const factory HomeState.productsError(ErrorHandler errorHandler) =
      ProductsError;

  // Categories
  const factory HomeState.categoriesLoading() = CategoriesLoading;
  const factory HomeState.categoriesSuccess(
    List<Category?>? categoriesDataList,
  ) = CategoriesSuccess;
  const factory HomeState.categoriesError(ErrorHandler errorHandler) =
      CategoriesError;
}
