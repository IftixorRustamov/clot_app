import 'package:clot_app/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBarWg extends StatelessWidget {
  final int selectedIndex;
  final void Function(int index) onItemTapped;

  const MyBottomNavigationBarWg(
      {super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      backgroundColor: AppColors.darkGrey,
      selectedItemColor: AppColors.purple,
      unselectedItemColor: AppColors.white.withOpacity(0.6),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: ImageIcon(
            size: 24,
            AssetImage('assets/icons/home.png'),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon:  ImageIcon(
            size: 24,
            AssetImage('assets/icons/notification.png'),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            size: 24,
            AssetImage('assets/icons/order.png'),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            size: 24,
            AssetImage('assets/icons/profile.png'),
          ),
          label: '',
        ),
      ],
    );
  }
}
