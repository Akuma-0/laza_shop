import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_shop/features/cart/ui/widgets/cart_items_list_view.dart';
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
          cartItemsLoading: () =>
              const Center(child: CircularProgressIndicator()),
          cartItemsSuccess: (cartItems) {
            return CartItemsListView(cartItems: cartItems??[]);
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
