import 'package:clot_app/config/app_responsive.dart';
import 'package:clot_app/config/routes/app_routes.dart';
import 'package:clot_app/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class PasswordRecoverPage extends StatelessWidget {
  const PasswordRecoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGrey,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppResponsive.width(0.055),
        ),
        child: Center(
          child: SizedBox(
            height: AppResponsive.height(0.3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/recover_sms.png"),
                Text(
                  "We Sent you an Email to reset your password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: AppResponsive.height(0.026),
                    fontFamily: 'circularStd',
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(AppRoutes.aboutYourselfPage);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.purple,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 16)),
                    child: const Text(
                      "Return to Login",
                      style: TextStyle(
                        color: AppColors.white,
                        fontFamily: 'circularStd',
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
