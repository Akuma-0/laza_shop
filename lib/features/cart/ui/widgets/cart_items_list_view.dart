import 'package:flutter/material.dart';
import 'package:laza_shop/features/cart/data/models/cart_response_model.dart';
import 'package:laza_shop/features/cart/ui/widgets/cart_item_tile.dart';

class CartItemsListView extends StatelessWidget {
  const CartItemsListView({super.key, required this.cartItems});
  final List<CartItem> cartItems;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return CartItemTile(cartItem: cartItems[index]);
      },
      itemCount: cartItems.length,
    );
  }
}
