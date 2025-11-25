import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_shop/core/helpers/extensions.dart';
import 'package:laza_shop/core/themes/text_styles.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle search tap
      },
      child: Container(
        height: 50.h,
        width: 350.w,
        decoration: BoxDecoration(
          color: context.colorScheme.secondary,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Row(
          children: [
            SizedBox(width: 10.w),
            Icon(
              Icons.search,
              color: context.colorScheme.onSecondary,
              size: 24.sp,
            ),
            SizedBox(width: 10.w),
            Text(
              'Search products',
              style: TextStyles.font15W400.copyWith(
                color: context.colorScheme.onSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
