import 'package:clot_app/config/app_responsive.dart';
import 'package:clot_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class InputFieldAuthWg extends StatelessWidget {
  final String hintText;

  const InputFieldAuthWg({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: AppColors.grey,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppResponsive.width(0.03),
        vertical: AppResponsive.height(0.02),
      ),
      height: AppResponsive.height(0.06),
      width: double.infinity,
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
              color: AppColors.white.withOpacity(0.5),
              fontSize: AppResponsive.height(0.017),
              fontFamily: 'circularStd',
            )),
      ),
    );
  }
}
