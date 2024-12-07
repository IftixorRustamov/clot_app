import 'package:clot_app/config/app_responsive.dart';
import 'package:clot_app/constants/app_colors.dart';
import 'package:clot_app/data/dummy_data_category.dart';
import 'package:clot_app/presentation/widgets/auth/auth_back_button_wg.dart';
import 'package:flutter/material.dart';

class ShopCategoriesPage extends StatelessWidget {
  const ShopCategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGrey,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppResponsive.width(0.055),
            vertical: AppResponsive.height(0.07)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthBackButtonWg(onPressed: () {}),
            SizedBox(height: 14),
            Text(
              "Shop by Categories",
              style: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.w700,
                fontSize: AppResponsive.height(0.025),
                fontFamily: "Gabarito",
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: CategoryData.categories.length,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(bottom: 8),
                  height: AppResponsive.height(0.069),
                  color: AppColors.grey,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage(CategoryData.categories[index].imageUrl),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        CategoryData.categories[index].title,
                        style: const TextStyle(
                          color: AppColors.white,
                          fontFamily: 'CircularStd',
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
