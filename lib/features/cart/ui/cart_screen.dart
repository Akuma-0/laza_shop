import 'package:flutter/material.dart';
import 'package:laza_shop/core/routing/routes.dart';
import 'package:laza_shop/core/widgets/app_bottom_nav_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //cart screen placeholder
    return Scaffold(
      body: Center(child: Text('Cart Screen')),
      bottomNavigationBar: AppBottomNavBar(
        routes: [
          Routes.homeScreen,
          Routes.cartScreen,
          Routes.notificationsScreen,
        ],
        currentIndex: 1,
      ),
    );
  }
}
