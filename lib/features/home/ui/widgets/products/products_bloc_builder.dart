import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_shop/features/home/ui/widgets/products/products_grid_view.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';

class ProductsBlocBuilder extends StatelessWidget {
  const ProductsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is ProductsLoading || 
          current is ProductsSuccess || 
          current is ProductsError,
      builder: (context, state) {
        return state.maybeWhen(
          productsLoading: () => const Center(child: CircularProgressIndicator()),
          productsSuccess: (productsList) {
            return setupSuccess(productsList);
          },
          productsError: (errorHandler) => setupError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupSuccess(productsList) {
    return ProductsGridView(productsList: productsList);
  }

  Widget setupError() {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 48, color: Colors.red),
          SizedBox(height: 16.h),
          Text(
            'Failed to load products',
            style: TextStyle(fontSize: 16, color: Colors.red),
          ),
          SizedBox(height: 8.h),
          Text(
            'Please check your internet connection',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
