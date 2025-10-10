import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza_shop/core/themes/text_styles.dart';
import '../../../../../core/themes/colors_manager.dart';
import '../../../data/models/categories_response_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, this.category});
  final Category? category;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115.w,
      height: 50.h,
      margin: EdgeInsets.only(right: 10.w),
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      decoration: BoxDecoration(
        color: ColorsManager.greyFA,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Container(
            width: 40.w,
            height: 40.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: _buildImage(),
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              category?.name ?? 'Unknown',
              style: TextStyles.font15W500,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage() {
    final imageUrl = category?.imageUrl ?? '';

    if (imageUrl.isEmpty) {
      return _buildErrorWidget();
    }

    // Check if the URL is an SVG file
    if (imageUrl.toLowerCase().endsWith('.svg')) {
      return SvgPicture.network(
        imageUrl,
        fit: BoxFit.contain,
        
        placeholderBuilder: (context) =>
            Image.asset('assets/images/sandy_loading.gif'),
      );
    } else {
      // Use CachedNetworkImage for regular images
      return CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.contain,
        placeholder: (context, url) => Image.asset('assets/images/sandy_loading.gif'),
        errorWidget: (context, url, error) => _buildErrorWidget(),
      );
    }
  }

  Widget _buildErrorWidget() {
    return Icon(
      Icons.image_not_supported,
      color: ColorsManager.mainPurple,
      size: 20.sp,
    );
  }
}
