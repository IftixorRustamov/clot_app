import 'package:flutter/material.dart';

import '../../../config/app_responsive.dart';
import '../../../constants/app_colors.dart';

class HomeInputFieldWg extends StatelessWidget {
  const HomeInputFieldWg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppResponsive.width(0.04),
        vertical: AppResponsive.height(0.01),
      ),
      width: double.infinity,
      height: AppResponsive.height(0.045),
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(100),
      ),
      child: TextField(
        decoration: InputDecoration(
            icon: Image.asset(
              'assets/images/search.png',
              height: 16,
              width: 16,
            ),
            label: const Text(
              "Search",
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'CircularStd',
                color: AppColors.white,
              ),
            ),
            border: InputBorder.none),
      ),
    );
  }
}
