import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_shop/core/networking/api_result.dart';
import 'package:laza_shop/features/cart/data/repos/cart_repo.dart';
import '../data/models/cart_response_model.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final CartRepo _cartRepo;
  CartCubit(this._cartRepo) : super(CartState.initial());
  List<CartItem>? cartItems = [];
  void getCartItems() async {
    emit(CartState.cartItemsLoading());
    final response = await _cartRepo.getCartItems({});
    response.when(
      success: (cartResponseModel) {
        cartItems = cartResponseModel.items ?? [];
        emit(CartState.cartItemsSuccess(cartItems));
      },
      failure: (errorHandler) {
        emit(CartState.cartItemsError(errorHandler));
      },
    );
  }
  void deleteCartItem(String itemId) async {
    emit(CartState.cartItemDeleting());
    final response = await _cartRepo.deleteCartItem(itemId);
    response.when(
      success: (_) {
        cartItems?.removeWhere((item) => item.itemId == itemId);
        emit(CartState.cartItemDeleteSuccess());
        emit(CartState.cartItemsSuccess(cartItems));
      },
      failure: (errorHandler) {
        emit(CartState.cartItemDeleteError(errorHandler));
      },
    );
  }
}
