import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_shop/core/helpers/extensions.dart';
import 'package:laza_shop/features/cart/ui/widgets/cart_items_list_view.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../core/themes/text_styles.dart';
import '../../data/models/cart_response_model.dart';
import '../../logic/cart_cubit.dart';
import '../../logic/cart_state.dart';

class CartBlocBuilder extends StatelessWidget {
  const CartBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      buildWhen: (previous, current) =>
          current is CartItemsLoading ||
          current is CartItemsSuccess ||
          current is CartItemsError,
      builder: (BuildContext context, CartState state) {
        return state.maybeWhen(
          cartItemsLoading: () => _buildLoading(),
          cartItemsSuccess: (cartItems) {
            return Column(
              children: [
                Expanded(child: CartItemsListView(cartItems: cartItems ?? [])),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  color: context.colorScheme.secondary,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Total: ', style: TextStyles.font17W500),
                      SizedBox(width: 10.w),
                      Text(
                        '\$${context.read<CartCubit>().totalPrice}',
                        style: TextStyles.font15W500,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
          cartItemsError: (errorHandler) {
            return Center(
              child: Text(
                'Failed to load cart items',
                style: TextStyle(fontSize: 16, color: Colors.red),
              ),
            );
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}

Widget _buildLoading() {
  return Skeletonizer(
    enabled: true,
    child: CartItemsListView(
      cartItems: List.generate(10, (index) {
        return CartItem(
          itemId: '',
          productId: '',
          productName: '',
          productImageUrl: '',
          productStock: 0,
          weightInGrams: 0,
          quantity: 0,
          discountPercentage: 0,
          basePricePerUnit: 0,
          finalPricePerUnit: 0,
          totalPrice: 0,
        );
      }),
    ),
  );
}
