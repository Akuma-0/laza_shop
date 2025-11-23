import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_shop/features/home/ui/widgets/products/prdouct_card.dart';
import '../../../data/models/products_response_model.dart';
import '../../../logic/home_cubit.dart';

class ProductsGridView extends StatelessWidget {
  ProductsGridView({
    super.key,
    required this.productsList,
    required this.hasNextPage,
  });
  final List<Product?>? productsList;
  final bool hasNextPage;
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
      child: CustomScrollView(
        slivers: [
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ProductCard(product: productsList![index]);
            }, childCount: productsList?.length ?? 0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8.h,
              crossAxisSpacing: 10.w,
              childAspectRatio: 0.59,
            ),
          ),
          SliverToBoxAdapter(
            child: hasNextPage
                ? SizedBox(child: Image.asset('assets/images/loading.gif',height:100.w,))
                : SizedBox(
                    child: Text(
                      'No more products >_<',
                      textAlign: TextAlign.center,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
