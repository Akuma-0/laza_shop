import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_shop/features/home/data/models/products_response_model.dart';
import '../../../../core/themes/text_styles.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                'Product name ',
                style: TextStyles.font13W400.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              'Price',
              style: TextStyles.font13W400.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
            SizedBox(width: 50.w),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                product.name ?? '',
                style: TextStyles.font22W600,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(width: 30.w),
            Text('\$${product.price}', style: TextStyles.font22W600),
          ],
        ),
        SizedBox(height: 20.h),
        Divider(
          color: Theme.of(context).colorScheme.onSecondary,
          thickness: 2.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                text: 'Stock: ',
                style: TextStyles.font15W500.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                children: [
                  TextSpan(
                    text: '${product.stock}',
                    style: TextStyles.font15W500.copyWith(
                      color: product.stock != null && product.stock! > 0
                          ? Theme.of(context).colorScheme.onSurface
                          : Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 2.w,
              color: Theme.of(context).colorScheme.onSecondary,
              height: 15.h,
            ),
            RichText(
              text: TextSpan(
                text: 'Weight: ',
                style: TextStyles.font15W500.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                children: [
                  TextSpan(
                    text: '${product.weight}',
                    style: TextStyles.font15W500.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 2.w,
              color: Theme.of(context).colorScheme.onSecondary,
              height: 15.h,
            ),
            RichText(
              text: TextSpan(
                text: 'Discount: ',
                style: TextStyles.font15W500.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                children: [
                  TextSpan(
                    text: '%${product.discountPercentage}',
                    style: TextStyles.font15W500.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(
          color: Theme.of(context).colorScheme.onSecondary,
          thickness: 2.h,
        ),
        SizedBox(height: 20.h),
        Text('Description', style: TextStyles.font17W600),
        SizedBox(height: 10.h),
        Text(
          product.description ?? '',
          style: TextStyles.font15W400.copyWith(
            color: Theme.of(context).colorScheme.onSecondary,
            height: 1.4,
          ),
        ),
      ],
    );
  }
}
