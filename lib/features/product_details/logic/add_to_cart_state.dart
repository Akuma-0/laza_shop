import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:laza_shop/features/product_details/data/models/add_to_cart_response_model.dart';

import '../../../core/networking/api_error_handler.dart';

part "add_to_cart_state.freezed.dart";
@freezed
class AddToCartState with _$AddToCartState {
  const factory AddToCartState.initial() = _Initial;
  const factory AddToCartState.addingToCart() = AddingToCart;
  const factory AddToCartState.addToCartSuccess(
    AddToCartResponseModel addToCartResponseModel,
  ) = AddToCartSuccess;
  const factory AddToCartState.addToCartError(
    ErrorHandler errorHandler
  ) =
      AddToCartError; 
}
