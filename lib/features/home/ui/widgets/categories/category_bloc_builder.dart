import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_shop/features/home/ui/widgets/categories/category_list_view.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';

class CategoryBlocBuilder extends StatelessWidget {
  const CategoryBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is CategoriesLoading ||
          current is CategoriesSuccess ||
          current is CategoriesError,
      builder: (context, state) {
        return state.maybeWhen(
          categoriesLoading: () =>
              const Center(child: CircularProgressIndicator()),
          categoriesSuccess: (categoriesList) {
            return setupSuccess(categoriesList);
          },
          categoriesError: (errorHandler) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupSuccess(categoriesList) {
    return CategoryListView(categories: categoriesList);
  }

  Widget setupError() {
    return Center(
      child: Row(
        children: [
          Icon(Icons.error_outline, size: 20.sp, color: Colors.red),
          SizedBox(height: 16.h),
          Text(
            'Failed to load categories',
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
