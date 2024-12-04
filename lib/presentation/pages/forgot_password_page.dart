import 'package:clot_app/presentation/widgets/auth_back_button_wg.dart';
import 'package:flutter/material.dart';

import '../../config/app_responsive.dart';
import '../../constants/app_colors.dart';
import '../widgets/button_auth_wg.dart';
import '../widgets/input_field_auth_wg.dart';

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({super.key});

  final sizedBox = SizedBox(height: AppResponsive.height(0.017));
  final bigSizedBox = SizedBox(height: AppResponsive.height(0.034));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGrey,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppResponsive.width(0.05),
            vertical: AppResponsive.height(0.07)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthBackButtonWg(onPressed: () {
              Navigator.of(context).pop();
            }),
            bigSizedBox,
            Text(
              "Forgot Password",
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: AppResponsive.height(0.034),
                  fontWeight: FontWeight.w700,
                  fontFamily: 'circularStd'),
            ),
            bigSizedBox,
            const InputFieldAuthWg(hintText: "Email Address"),
            SizedBox(
              height: AppResponsive.height(0.025),
            ),
            ButtonAuthWg(
              onPressed: () {},
              text: "Continue",
            ),
          ],
        ),
      ),
    );
  }
}
