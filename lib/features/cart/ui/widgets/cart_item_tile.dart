import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_shop/core/helpers/extensions.dart';
import 'package:laza_shop/features/cart/data/models/cart_response_model.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../core/themes/text_styles.dart';
import '../../logic/cart_cubit.dart';

class CartItemTile extends StatefulWidget {
  const CartItemTile({super.key, required this.cartItem});
  final CartItem cartItem;

  @override
  State<CartItemTile> createState() => _CartItemTileState();
}

class _CartItemTileState extends State<CartItemTile> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: Container(
        height: 120.h,
        width: 335.w,
        padding: EdgeInsets.all(10.w),
        margin: EdgeInsets.symmetric(vertical: 5.h),
        decoration: BoxDecoration(
          color: context.colorScheme.secondary,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Container(
                width: 100.w,
                height: 100.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: context.colorScheme.surface,
                ),
                child: CachedNetworkImage(
                  imageUrl: widget.cartItem.productImageUrl,
                  placeholder: (context, url) =>
                      Center(child: Image.asset('assets/images/loading.gif')),
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) => Icon(
                    Icons.image_not_supported,
                    color: context.colorScheme.primary,
                    size: 30.sp,
                  ),
                  width: 77.w,
                  height: 97.h,
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.cartItem.productName,
                    style: TextStyles.font11W500,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    softWrap: false,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    '\$${widget.cartItem.totalPrice}',
                    style: TextStyles.font11W400,
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_drop_up_outlined),
                      ),
                      Text(
                        '${widget.cartItem.quantity}',
                        style: TextStyles.font13W600,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_drop_down_outlined),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () async {
                          setState(() {
                            isLoading = true;
                          });
                          context.read<CartCubit>().deleteCartItem(
                            widget.cartItem.itemId,
                          );
                          setState(() {
                            isLoading = false;
                          });
                        },
                        icon: Icon(Icons.delete_outline),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
