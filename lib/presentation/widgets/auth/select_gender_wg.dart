import 'package:flutter/material.dart';

import '../../../config/app_responsive.dart';
import '../../../constants/app_colors.dart';

class SelectGenderWg extends StatelessWidget {
  const SelectGenderWg({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppResponsive.height(0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Who do you shop for ?",
            style: TextStyle(
              color: AppColors.white,
              fontFamily: 'CircularStd',
              fontSize: 16,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                    height: AppResponsive.height(0.055),
                    child: _elevatedButton(onPressed: () {}, text: "Men")),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: SizedBox(
                  height: AppResponsive.height(0.055),
                  child: _elevatedButton(onPressed: () {}, text: "Women"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _elevatedButton(
    {required VoidCallback onPressed, required String text}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(backgroundColor: AppColors.purple),
    onPressed: onPressed,
    child: Text(
      text,
      style: const TextStyle(
        color: AppColors.white,
        fontFamily: 'CircularStd',
        fontSize: 16,
      ),
    ),
  );
}
