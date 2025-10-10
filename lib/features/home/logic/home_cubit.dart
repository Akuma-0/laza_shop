import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_shop/core/networking/api_result.dart';
import 'package:laza_shop/features/home/data/models/products_response_model.dart';
import '../data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<Product?>? productsList = [];

  void getProducts() async {
    emit(const HomeState.productsLoading());
    final response = await _homeRepo.getProducts({});
    response.when(
      success: (productsResponseModel) {
        productsList = productsResponseModel.products ?? [];
        log(productsList?[0]?.name ?? 'failed');
        emit(HomeState.productsSuccess(productsList));
      },
      failure: (errorHandler) {
        emit(HomeState.productsError(errorHandler));
      },
    );
  }
}
