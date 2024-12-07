import 'package:clot_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../config/app_responsive.dart';

class ButtonAuthIconWg extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final IconData? icon;
  final String imgPath;
  final Color iconColor;

  const ButtonAuthIconWg(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.icon,
      this.iconColor = AppColors.white,
      this.imgPath = ''});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.grey,
        padding: EdgeInsets.symmetric(
            vertical: AppResponsive.height(0.015), horizontal: 24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          icon != null
              ? Icon(
                  icon,
                  color: AppColors.white,
                  size: 24,
                )
              : Image(
                  height: AppResponsive.height(0.025),
                  width: AppResponsive.height(0.025),
                  image: AssetImage(imgPath),
                ),
          SizedBox(width: AppResponsive.width(0.16)),
          Text(
            text,
            style: TextStyle(
              fontSize: AppResponsive.height(0.017),
              fontWeight: FontWeight.w500,
              color: AppColors.white,
              fontFamily: 'circularStd',
            ),
          ),
        ],
      ),
    );
  }
}
