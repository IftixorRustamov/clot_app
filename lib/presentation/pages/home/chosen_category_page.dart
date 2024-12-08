import 'package:clot_app/config/app_responsive.dart';
import 'package:clot_app/core/configs/theme/app_colors.dart';
import 'package:clot_app/data/dummy_data_category.dart';
import 'package:clot_app/presentation/widgets/auth/auth_back_button_wg.dart';
import 'package:clot_app/presentation/widgets/home_widgets/card_wg.dart';
import 'package:flutter/material.dart';

class ChosenCategoryPage extends StatelessWidget {
  const ChosenCategoryPage({super.key});

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
              "Hoodies(999)",
              style: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.w700,
                fontSize: AppResponsive.height(0.017),
                fontFamily: "Gabarito",
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.6,
                    crossAxisCount: 2,
                    mainAxisSpacing: 20),
                itemBuilder: (context, index) => CardWg(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
