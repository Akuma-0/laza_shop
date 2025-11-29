import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_shop/core/helpers/extensions.dart';
import 'package:laza_shop/core/routing/routes.dart';
import 'package:laza_shop/core/themes/app_color/app_color_light.dart';
import 'package:laza_shop/core/widgets/app_bottom_bar.dart';
import 'package:laza_shop/features/home/data/models/products_response_model.dart';
import 'package:laza_shop/features/product_details/ui/widgets/details_body.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: context.colorScheme.secondary,
                    width: double.infinity,
                    height: 390.h,
                    child: CachedNetworkImage(
                      imageUrl: product.imageUrl ?? '',
                      placeholder: (context, url) =>
                          Image.asset('assets/images/sandy_loading.gif'),
                      errorWidget: (context, url, error) => Icon(
                        Icons.image_not_supported,
                        color: AppColorLight.primaryColor,
                        size: 120.sp,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 10.h,
                    left: 20.w,
                    child: CircleAvatar(
                      backgroundColor: context.colorScheme.surface,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: context.colorScheme.onSurface,
                          size: 24.sp,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10.h,
                    right: 20.w,
                    child: CircleAvatar(
                      backgroundColor: context.colorScheme.surface,
                      child: IconButton(
                        icon: Icon(
                          Icons.shopping_bag_outlined,
                          color: context.colorScheme.onSurface,
                          size: 24.sp,
                        ),
                        onPressed: () {
                          context.pushNamed(Routes.cartScreen);
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: DetailsBody(product: product),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AppBottomBar(
        onTap: () {
          // Handle add to cart action
        },
        buttonText: 'Add to Cart',
      ),
    );
  }
}
