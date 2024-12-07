import 'package:clot_app/config/app_responsive.dart';
import 'package:clot_app/config/routes/app_routes.dart';
import 'package:clot_app/constants/app_colors.dart';
import 'package:clot_app/presentation/widgets/auth/button_auth_icon_wg.dart';
import 'package:clot_app/presentation/widgets/auth/input_field_auth_wg.dart';
import 'package:flutter/material.dart';

import '../../widgets/auth/button_auth_wg.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  final sizedBox = SizedBox(height: AppResponsive.height(0.017));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGrey,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppResponsive.width(0.05)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sign in",
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: AppResponsive.height(0.034),
                  fontWeight: FontWeight.w700,
                  fontFamily: 'circularStd'),
            ),
            SizedBox(
              height: AppResponsive.height(0.034),
            ),
            Column(
              children: [
                const InputFieldAuthWg(hintText: "Email Address"),
                sizedBox,
                const InputFieldAuthWg(hintText: "Password"),
                sizedBox,
                ButtonAuthWg(
                  onPressed: () {},
                  text: "Continue",
                ),
                sizedBox,
                Row(
                  children: [
                    Text(
                      "Don't have an Account ?",
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: AppResponsive.height(0.013),
                          fontFamily: 'circularStd'),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(AppRoutes.signUpPage);
                        },
                        child: Text(
                          'Create one',
                          style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: AppResponsive.height(0.013),
                              fontFamily: 'circularStd'),
                        ))
                  ],
                )
              ],
            ),
            SizedBox(
              height: AppResponsive.height(0.076),
            ),
            Column(
              children: [
                ButtonAuthIconWg(
                    onPressed: () {},
                    text: "Continue With Apple",
                    icon: Icons.apple),
                sizedBox,
                ButtonAuthIconWg(
                  onPressed: () {},
                  text: "Continue With Google",
                  icon: null,
                  imgPath: 'assets/images/google.png',
                ),
                sizedBox,
                ButtonAuthIconWg(
                  onPressed: () {},
                  text: "Continue With Facebook",
                  icon: null,
                  imgPath: 'assets/images/facebook.png',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
