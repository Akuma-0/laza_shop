import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_shop/core/helpers/extensions.dart';
import 'package:laza_shop/core/routing/routes.dart';

import '../../../../../core/themes/colors_manager.dart';
import '../../../../../core/themes/text_styles.dart';
import '../../../data/models/products_response_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to product details screen
        context.pushNamed(Routes.productDetailsScreen, arguments: product);
      },
      child: SizedBox(
        width: 160.w,
        // padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: Stack(
                children: [
                  Container(
                    width: 160.w,
                    height: 203.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: ColorsManager.greyEA,
                    ),
                    child: CachedNetworkImage(
                      imageUrl: product?.imageUrl ?? '',
                      placeholder: (context, url) => Center(
                        child: Image.asset('assets/images/loading.gif'),
                      ),
                      fit: BoxFit.cover,
                      errorWidget: (context, url, error) => Icon(
                        Icons.image_not_supported,
                        color: ColorsManager.mainPurple,
                        size: 40.sp,
                      ),
                      width: 160.w,
                      height: 203.h,
                    ),
                  ),
                  Positioned(
                    top: 10.h,
                    right: 10.w,
                    child: GestureDetector(
                      onTap: () {
                        // Handle favorite icon tap
                      },
                      child: Icon(
                        Icons.favorite_border,
                        color: ColorsManager.grey9E,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              product?.name ?? '',
              style: TextStyles.font11W500,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              softWrap: false,
            ),
            SizedBox(height: 5.h),
            Text('\$${product?.price}', style: TextStyles.font13W600),
          ],
        ),
      ),
    );
  }
}
