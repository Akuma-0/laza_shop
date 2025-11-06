import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_shop/core/helpers/extensions.dart';
import '../../../core/helpers/constants.dart';
import '../../../core/helpers/shared_pref_helper.dart';
import '../../../core/routing/routes.dart';
import '../../../core/themes/text_styles.dart';
import '../../../core/widgets/app_text_button.dart';

class LetsGoBox extends StatelessWidget {
  const LetsGoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.w,
      height: 244.h,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Look Good, Feel Good',
            style: TextStyles.font25W600.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          SizedBox(height: 15.h),
          Text(
            'Create your individual & unique style and look amazing everyday.',
            style: TextStyles.font15W400.copyWith(
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: AppTextButton(
              buttonText: 'Lets go',
              textStyle: TextStyles.font17W500.copyWith(color: Colors.white),
              onPressed: () {
                SharedPrefHelper.setData(SharedPrefKeys.onboarding, true);
                context.pushReplacementNamed(Routes.loginScreen);
              },
            ),
          ),
        ],
      ),
    );
  }
}
