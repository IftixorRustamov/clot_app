import 'package:clot_app/config/app_responsive.dart';
import 'package:clot_app/core/configs/theme/app_colors.dart';
import 'package:clot_app/presentation/widgets/home_widgets/category_list_wg.dart';
import 'package:clot_app/presentation/widgets/home_widgets/home_input_field_wg.dart';
import 'package:clot_app/presentation/widgets/home_widgets/home_top_selling_wg.dart';
import 'package:clot_app/presentation/widgets/home_widgets/top_bar_wg.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _sizedBox = SizedBox(height: AppResponsive.height(0.025));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGrey,
      body: Padding(
        padding: EdgeInsets.only(
          left: AppResponsive.width(0.055),
          right: AppResponsive.width(0.055),
          top: AppResponsive.height(0.067),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TopBarWg(),
              _sizedBox,
              const HomeInputFieldWg(),
              _sizedBox,
              const HomeCategoryWg(),
              _sizedBox,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Selling",
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Gabarito"),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontFamily: "Gabarito"),
                  ),
                ],
              ),
              _sizedBox,
              const HomeTopSellingWg(),
              _sizedBox,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New In",
                    style: TextStyle(
                        color: AppColors.purple,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Gabarito"),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontFamily: "Gabarito"),
                  ),
                ],
              ),
              _sizedBox,
              const HomeTopSellingWg(),
            ],
          ),
        ),
      ),
    );
  }
}
