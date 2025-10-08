import 'package:flutter/material.dart';

import '../../../../core/themes/text_styles.dart';

class PasswordRequirements extends StatelessWidget {
  const PasswordRequirements({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Password must contain:', style: TextStyles.font15W500),
        SizedBox(height: 8),
        Text('- At least 8 characters'),
        Text('- At least one uppercase letter'),
        Text('- At least one number'),
        Text('- At least one special character'),
      ],
    );
  }
}
