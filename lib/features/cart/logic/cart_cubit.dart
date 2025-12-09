import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_shop/core/networking/api_result.dart';
import 'package:laza_shop/features/cart/data/repos/cart_repo.dart';
import '../data/models/cart_response_model.dart';
import '../data/models/update_item_count_request_body.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final CartRepo _cartRepo;
  CartCubit(this._cartRepo) : super(CartState.initial());
  List<CartItem>? cartItems = [];
  double totalPrice = 0.0;

  void calculateTotalPrice() {
    totalPrice = 0.0;
    if (cartItems != null) {
      for (var item in cartItems!) {
        totalPrice += (item.totalPrice);
      }
    }
    totalPrice =
        ((totalPrice * 100).roundToDouble()) / 100; // Round to 2 decimal places
  }

  void getCartItems() async {
    emit(CartState.cartItemsLoading());
    final response = await _cartRepo.getCartItems({});
    response.when(
      success: (cartResponseModel) {
        cartItems = cartResponseModel.items ?? [];
        calculateTotalPrice();
        emit(CartState.cartItemsSuccess(cartItems));
      },
      failure: (errorHandler) {
        emit(CartState.cartItemsError(errorHandler));
      },
    );
  }

  Future<bool> deleteCartItem(String itemId) async {
    emit(CartState.cartItemDeleting());
    final response = await _cartRepo.deleteCartItem(itemId);
    bool success = false;
    response.when(
      success: (_) {
        cartItems?.removeWhere((item) => item.itemId == itemId);
        emit(CartState.cartItemDeleteSuccess());
        calculateTotalPrice();
        emit(CartState.cartItemsSuccess(cartItems));
        success = true;
      },
      failure: (errorHandler) {
        emit(CartState.cartItemDeleteError(errorHandler));
        success = false;
      },
    );
    return success;
  }

  Future<bool> updateCartItemCount(
    String itemId,
    UpdateItemCountRequestBody updateItemCountRequestBody,
  ) async {
    bool success = false;
    emit(CartState.cartItemCountUpdating());
    final response = await _cartRepo.updateCartItemCount(
      itemId,
      updateItemCountRequestBody,
    );
    response.when(
      success: (updateItemCountResponseModel) {
        emit(
          CartState.cartItemCountUpdateSuccess(updateItemCountResponseModel),
        );
        final index = cartItems?.indexWhere((item) => item.itemId == itemId);
        if (updateItemCountResponseModel.quantity == 0 &&
            index != null &&
            index != -1) {
          cartItems?.removeAt(index);
        } else if (index != null && index != -1) {
          cartItems?[index].quantity = updateItemCountResponseModel.quantity;
          cartItems?[index].totalPrice =
              ((cartItems![index].basePricePerUnit *
                          updateItemCountResponseModel.quantity) *
                      100)
                  .roundToDouble() /
              100;
        }
        calculateTotalPrice();
        emit(CartState.cartItemsSuccess(cartItems));
        success = true;
      },
      failure: (errorHandler) {
        emit(CartState.cartItemCountUpdateError(errorHandler));
        success = false;
      },
    );
    return success;
  }
}
