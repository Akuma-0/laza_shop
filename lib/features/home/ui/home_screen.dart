import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_shop/features/home/ui/widgets/search_container.dart';
import '../../../core/themes/text_styles.dart';
import 'widgets/products/products_bloc_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello', style: TextStyles.font28W600),
              Text('Welcome to Laza.', style: TextStyles.font15W400),
              SizedBox(height: 20.h),
              const SearchContainer(),
              SizedBox(height: 20.h),
              const Expanded(child: ProductsBlocBuilder()),
            ],
          ),
        ),
      ),
    );
  }
}
