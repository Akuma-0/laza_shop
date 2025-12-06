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
}
