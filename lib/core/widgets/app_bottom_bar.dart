import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helpers/extensions.dart';
import '../themes/text_styles.dart';

class AppBottomBar extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonText;
  const AppBottomBar({
    super.key,
    required this.onTap,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,

      padding: EdgeInsets.zero,
      color: context.colorScheme.primary,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20.0.w),
          decoration: BoxDecoration(color: context.colorScheme.primary),
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: TextStyles.font17W500.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
