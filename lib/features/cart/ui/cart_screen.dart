import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_shop/features/cart/ui/widgets/cart_bloc_builder.dart';
import '../../../core/routing/routes.dart';
import '../../../core/themes/text_styles.dart';
import '../../../core/widgets/app_bottom_nav_bar.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //cart screen placeholder
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart', style: TextStyles.font17W600),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              CartBlocBuilder(),
            ],
          ),
        ),
      ),
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
