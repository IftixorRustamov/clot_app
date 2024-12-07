import 'package:flutter/material.dart';

import '../../../config/app_responsive.dart';
import '../../../constants/app_colors.dart';

class TopBarWg extends StatelessWidget {
  const TopBarWg({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppResponsive.height(0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(
              'assets/images/circle_avatar.png',
            ),
          ),
          Container(
            width: AppResponsive.width(0.175),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.grey),
            child: DropdownButton(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              isExpanded: true,
              icon: Image.asset(
                "assets/images/arrowdown2.png",
                height: 16,
                width: 16,
              ),
              underline: SizedBox(),
              hint: const Text(
                "Men",
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Gabarito',
                  fontSize: 12,
                ),
              ),
              items: [],
              onChanged: (value) {},
            ),
          ),
          Container(
            height: AppResponsive.height(0.04),
            width: AppResponsive.height(0.04),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.purple),
            child: IconButton(
                onPressed: () {}, icon: Image.asset("assets/images/bag2.png")),
          )
        ],
      ),
    );
  }
}
