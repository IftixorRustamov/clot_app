import 'package:flutter/material.dart';

import '../../../core/configs/theme/app_colors.dart';

class CardWg extends StatelessWidget {
  const CardWg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 12),
      width: 159,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(8),
                ),
                child: Image.asset(
                  'assets/images/men_jacket.png',
                ),
              ),
              Positioned(
                top: 4,
                right: 4,
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                    size: 16,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 159,
            color: AppColors.grey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Men's Harrington Jacket",
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 12,
                        fontFamily: "CircularStd"),
                  ),
                  Text(
                    "\$148.00",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 12,
                        fontFamily: "Gabarito",
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
