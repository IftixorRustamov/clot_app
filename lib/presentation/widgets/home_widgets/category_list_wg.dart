import 'package:clot_app/config/routes/app_routes.dart';
import 'package:flutter/material.dart';

import '../../../config/app_responsive.dart';
import '../../../constants/app_colors.dart';
import '../../../data/dummy_data_category.dart';

class HomeCategoryWg extends StatelessWidget {
  const HomeCategoryWg({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: AppResponsive.height(0.125),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: TextStyle(
                    color: AppColors.white,
                    fontFamily: 'Gabarito',
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'See All',
                style: TextStyle(
                  color: AppColors.white,
                  fontFamily: 'Gabarito',
                  fontSize: 16,
                ),
              )
            ],
          ),
          SizedBox(
            height: AppResponsive.height(0.085),
            child: ListView.builder(
              itemCount: CategoryData.categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 15),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(AppRoutes.shopCategoriesPage);
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage(CategoryData.categories[index].imageUrl),
                      ),
                      Text(
                        CategoryData.categories[index].title,
                        style: const TextStyle(
                            color: AppColors.white,
                            fontSize: 12,
                            fontFamily: 'CircularStd'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
