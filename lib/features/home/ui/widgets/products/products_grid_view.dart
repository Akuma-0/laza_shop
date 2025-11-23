import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_shop/features/home/ui/widgets/products/prdouct_card.dart';
import '../../../data/models/products_response_model.dart';
import '../../../logic/home_cubit.dart';

class ProductsGridView extends StatelessWidget {
  ProductsGridView({super.key, required this.productsList});
  final List<Product?>? productsList;
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification.metrics.pixels ==
            notification.metrics.maxScrollExtent) {
          context.read<HomeCubit>().getProducts();
        }
        return true;
      },
      child: GridView.builder(
        itemCount: productsList?.length ?? 0,
        itemBuilder: (context, index) {
          return ProductCard(product: productsList![index]);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.h,
          crossAxisSpacing: 10.w,
          childAspectRatio: 0.59,
        ),
      ),
    );
  }
}
