import 'package:flutter/material.dart';

import '../../../config/app_responsive.dart';
import '../../../core/configs/theme/app_colors.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Orders",
          style: TextStyle(
            color: AppColors.white,
            fontSize: AppResponsive.height(0.017),
            fontWeight: FontWeight.w700,
            fontFamily: "Gabarito",
          ),
        ),
      ),
    );
  }
}
