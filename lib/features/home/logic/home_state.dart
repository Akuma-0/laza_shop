import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/networking/api_error_handler.dart';
import '../data/models/products_response_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // Products
  const factory HomeState.productsLoading() = ProductsLoading;
  const factory HomeState.productsSuccess(
    List<Product?>? productsDataList,
  ) = ProductsSuccess;
  const factory HomeState.productsError(ErrorHandler errorHandler) =
      ProductsError;
}
