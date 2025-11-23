import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_shop/core/networking/api_result.dart';
import 'package:laza_shop/features/home/data/models/products_response_model.dart';
import '../data/models/categories_response_model.dart';
import '../data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<Product?>? productsList = [];
  List<Category?>? categoriesList = [];
  int pageNumber = 1;
  bool hasNextPage = true;

  void getProducts() async {
    if (!hasNextPage ||
        (state is ProductsLoadingMore) ||
        (state is ProductsLoading)) {
      return;
    }
    if (pageNumber == 1) {
      emit(const HomeState.productsLoading());
    } else {
      emit(const HomeState.productsLoadingMore());
    }
    final response = await _homeRepo.getProducts({
      "pageSize": 10,
      "page": pageNumber,
    });
    response.when(
      success: (productsResponseModel) {
        productsList!.addAll(productsResponseModel.products ?? []);
        hasNextPage = productsResponseModel.hasNextPage ?? false;
        emit(HomeState.productsSuccess(productsList));
      },
      failure: (errorHandler) {
        emit(HomeState.productsError(errorHandler));
      },
    );
    pageNumber++;
  }

  void getCategories() async {
    emit(const HomeState.categoriesLoading());
    final response = await _homeRepo.getCategories({});
    response.when(
      success: (categoriesResponseModel) {
        categoriesList = categoriesResponseModel.categories ?? [];
        emit(HomeState.categoriesSuccess(categoriesList));
      },
      failure: (errorHandler) {
        emit(HomeState.categoriesError(errorHandler));
      },
    );
  }
}
