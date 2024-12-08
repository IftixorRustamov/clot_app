import 'package:flutter/material.dart';

import '../../../config/app_responsive.dart';
import '../../../core/configs/theme/app_colors.dart';

class ExploreCategoriesButtonWg extends StatelessWidget {
  const ExploreCategoriesButtonWg({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppResponsive.height(0.055),
      width: AppResponsive.width(0.43),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: AppColors.purple),
          child: Text(
            "Explore Categories",
            style: TextStyle(
              color: AppColors.white,
              fontSize: AppResponsive.height(0.016),
              fontFamily: "CircularStd",
            ),
          )),
    );
  }
}
