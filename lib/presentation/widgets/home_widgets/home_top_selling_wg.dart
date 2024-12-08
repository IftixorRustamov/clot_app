import 'package:clot_app/presentation/widgets/home_widgets/card_wg.dart';
import 'package:flutter/material.dart';

import '../../../config/app_responsive.dart';
import '../../../data/dummy_data_category.dart';

class HomeTopSellingWg extends StatelessWidget {
  const HomeTopSellingWg({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppResponsive.height(0.35),
      child: ListView.builder(
          itemCount: CategoryData.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => CardWg()),
    );
  }
}
