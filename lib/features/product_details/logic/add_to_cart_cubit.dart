import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_shop/core/networking/api_result.dart';
import 'package:laza_shop/features/product_details/data/repos/add_to_cart_repo.dart';
import '../data/models/add_to_cart_request_body.dart';
import 'add_to_cart_state.dart';

class AddToCartCubit extends Cubit<AddToCartState> {
  AddToCartCubit(this._addToCartRepo) : super(AddToCartState.initial());
  final AddToCartRepo _addToCartRepo;
  void addToCart(String productId) async {
    emit(AddToCartState.addingToCart());
    final response = await _addToCartRepo.addToCart(
      AddToCartRequestBody(1, productId),
    );
    response.when(
      success: (addToCartResponseModel) {
        emit(AddToCartState.addToCartSuccess(addToCartResponseModel));
      },
      failure: (errorHandler) {
        emit(AddToCartState.addToCartError(errorHandler));
      },
    );
  }
}
