import 'package:flutter/material.dart';

import '../../../config/app_responsive.dart';
import '../../../constants/app_colors.dart';

class AuthBackButtonWg extends StatelessWidget {
  final VoidCallback onPressed;

  const AuthBackButtonWg({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        shape: BoxShape.circle, // Circular shape
        color: AppColors.grey, // Background color
      ),
      child: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Image.asset(
          'assets/images/arrowleft2.png',
          height: 16,
          width: 16,
        ),
      ),
    );
  }
}
