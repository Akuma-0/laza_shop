import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:laza_shop/core/networking/api_error_handler.dart';
import '../data/models/cart_response_model.dart';

part 'cart_state.freezed.dart';

@freezed

class CartState with _$CartState {
  const factory CartState.initial() = _Initial;
    const factory CartState.cartItemsLoading() = CartItemsLoading;
  const factory CartState.cartItemsSuccess(
    List<CartItem>? cartItemsDataList,
  ) = CartItemsSuccess;
  const factory CartState.cartItemsError(ErrorHandler errorHandler) =
      CartItemsError;
}
