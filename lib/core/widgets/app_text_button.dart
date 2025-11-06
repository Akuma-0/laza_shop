import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  const AppTextButton({
    super.key,
    required this.buttonText,
    required this.textStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton( 
      onPressed: onPressed,
      child: Text(buttonText, style: textStyle),
    );
  }
}
