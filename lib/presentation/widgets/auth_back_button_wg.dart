import 'package:flutter/material.dart';

import '../../config/app_responsive.dart';
import '../../constants/app_colors.dart';

class AuthBackButtonWg extends StatelessWidget {
  final VoidCallback onPressed;

  const AuthBackButtonWg({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppResponsive.height(0.04),
      height: AppResponsive.height(0.04),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        shape: BoxShape.circle, // Circular shape
        color: AppColors.grey, // Background color
      ),
      child: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: AppColors.white, // Icon color
          size: AppResponsive.height(0.025), // Icon size
        ),
      ),
    );
  }
}
