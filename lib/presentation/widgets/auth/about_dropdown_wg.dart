import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class AboutDropdownWg extends StatelessWidget {
  const AboutDropdownWg({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      icon: Image.asset(
        'assets/images/arrowdown2.png',
        height: 24,
        width: 24,
      ),
      hint: const Text(
        "Age Range",
        style: TextStyle(
          color: AppColors.white,
          fontFamily: 'CircularStd',
          fontSize: 16,
        ),
      ),
      underline: const SizedBox(),
      borderRadius: BorderRadius.circular(100),
      isExpanded: true,
      items: [],
      onChanged: (value) {},
    );
  }
}
