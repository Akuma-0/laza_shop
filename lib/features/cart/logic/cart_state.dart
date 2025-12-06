import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:laza_shop/core/networking/api_error_handler.dart';
import 'package:laza_shop/features/cart/data/models/update_item_count_response_model.dart';
import '../data/models/cart_response_model.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;
  const factory CartState.cartItemsLoading() = CartItemsLoading;
  const factory CartState.cartItemsSuccess(List<CartItem>? cartItemsDataList) =
      CartItemsSuccess;
  const factory CartState.cartItemsError(ErrorHandler errorHandler) =
      CartItemsError;
  const factory CartState.cartItemDeleting() = CartItemDeleting;
  const factory CartState.cartItemDeleteSuccess() = CartItemDeleteSuccess;
  const factory CartState.cartItemDeleteError(ErrorHandler errorHandler) =
      CartItemDeleteError;
  const factory CartState.cartItemCountUpdating() = CartItemCountUpdating;
  const factory CartState.cartItemCountUpdateSuccess(
    UpdateItemCountResponseModel updateItemCountResponseModel,
  ) =
      CartItemCountUpdateSuccess;
  const factory CartState.cartItemCountUpdateError(ErrorHandler errorHandler) =
      CartItemCountUpdateError;
}
