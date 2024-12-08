import 'package:clot_app/config/app_responsive.dart';
import 'package:clot_app/core/configs/theme/app_colors.dart';
import 'package:clot_app/presentation/widgets/common/explore_categories_button_wg.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  NotificationsPage({super.key});

  List<String> notificationList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGrey,
      appBar: AppBar(
        backgroundColor: AppColors.darkGrey,
        centerTitle: true,
        title: Text(
          "Notifications",
          style: TextStyle(
            color: AppColors.white,
            fontSize: AppResponsive.height(0.017),
            fontWeight: FontWeight.w700,
            fontFamily: "Gabarito",
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppResponsive.width(0.055),
        ),
        child: notificationList.isNotEmpty
            ? Expanded(
                child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => Container(
                  height: 72,
                  margin: const EdgeInsets.only(bottom: 8),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppResponsive.width(0.028),
                    vertical: AppResponsive.height(0.017),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.grey,
                  ),
                  child: const Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/icons/notification.png'),
                        color: AppColors.white,
                        size: 24,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "alsdfjl jasdflkjasd;lfkj asdflkjj asdfl j",
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: AppColors.white,
                          fontFamily: 'CircularStd',
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ))
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/bell.png'),
                  SizedBox(height: AppResponsive.height(0.025)),
                  Text(
                    "No Notification yet",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: AppResponsive.height(0.025),
                      fontFamily: "CircularStd",
                    ),
                  ),
                  SizedBox(height: AppResponsive.height(0.025)),
                  ExploreCategoriesButtonWg(),
                ],
              ),
      ),
    );
  }
}
