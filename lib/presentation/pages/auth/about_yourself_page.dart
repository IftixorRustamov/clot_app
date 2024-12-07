import 'package:clot_app/config/app_responsive.dart';
import 'package:clot_app/config/routes/app_routes.dart';
import 'package:clot_app/constants/app_colors.dart';
import 'package:clot_app/presentation/widgets/auth/about_dropdown_wg.dart';
import 'package:clot_app/presentation/widgets/auth/button_auth_wg.dart';
import 'package:clot_app/presentation/widgets/auth/select_gender_wg.dart';
import 'package:flutter/material.dart';

class AboutYourselfPage extends StatelessWidget {
  const AboutYourselfPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGrey,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppResponsive.width(0.05),
              ),
              child: Center(
                child: SizedBox(
                  height: AppResponsive.height(0.34),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tell us About yourself",
                        style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Gabarito",
                          fontSize: AppResponsive.height(0.026),
                        ),
                      ),
                      const SelectGenderWg(),
                      SizedBox(
                        height: AppResponsive.height(0.1),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "How Old are you ?",
                              style: TextStyle(
                                color: AppColors.white,
                                fontFamily: 'CircularStd',
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: AppResponsive.height(0.055),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: AppColors.grey,
                                ),
                                width: double.infinity,
                                child: const AboutDropdownWg(),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: AppColors.grey,
            padding: EdgeInsets.symmetric(
              horizontal: AppResponsive.width(0.05),
              vertical: AppResponsive.height(0.02),
            ),
            height: AppResponsive.height(0.1),
            width: double.infinity,
            child: SizedBox(
              height: AppResponsive.height(0.015),
              child: ButtonAuthWg(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoutes.mainHomePage);
                  },
                  text: 'Finish'),
            ),
          )
        ],
      ),
    );
  }
}
