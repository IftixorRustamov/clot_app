import 'package:clot_app/core/configs/theme/app_colors.dart';
import 'package:clot_app/presentation/pages/home/home_page.dart';
import 'package:clot_app/presentation/pages/notifications_orders/notifications_page.dart';
import 'package:clot_app/presentation/pages/notifications_orders/orders_page.dart';
import 'package:clot_app/presentation/widgets/home_widgets/my_bottom_navigation_bar_wg.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    HomePage(),
     NotificationsPage(),
    const OrdersPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGrey,
      body: _screens[_selectedIndex],
      bottomNavigationBar: MyBottomNavigationBarWg(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
