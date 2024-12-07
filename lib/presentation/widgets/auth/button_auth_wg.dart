import 'package:clot_app/config/app_responsive.dart';
import 'package:clot_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ButtonAuthWg extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const ButtonAuthWg({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: AppResponsive.width(0.365),
          vertical: AppResponsive.height(0.015),
        ),
        backgroundColor: AppColors.purple,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: AppColors.white,
            fontSize: AppResponsive.height(0.017),
            fontWeight: FontWeight.w500,
            fontFamily: 'circularStd'),
      ),
    );
  }
}
