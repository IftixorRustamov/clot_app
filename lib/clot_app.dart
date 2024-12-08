import 'package:clot_app/config/app_responsive.dart';
import 'package:clot_app/config/routes/app_routes.dart';
import 'package:clot_app/presentation/pages/auth/about_yourself_page.dart';
import 'package:clot_app/presentation/pages/auth/forgot_password_page.dart';
import 'package:clot_app/presentation/pages/auth/password_recover_page.dart';
import 'package:clot_app/presentation/pages/auth/sign_up_page.dart';
import 'package:clot_app/presentation/splash/bloc/splash_cubit.dart';
import 'package:clot_app/presentation/splash/pages/splash_page.dart';

import 'package:clot_app/presentation/auth/pages/sign_in.dart';
import 'package:clot_app/presentation/pages/home/chosen_category_page.dart';
import 'package:clot_app/presentation/pages/home/home_page.dart';
import 'package:clot_app/presentation/pages/home/main_page.dart';
import 'package:clot_app/presentation/pages/home/shop_categories_page.dart';
import 'package:clot_app/presentation/pages/notifications_orders/notifications_page.dart';
import 'package:clot_app/presentation/pages/notifications_orders/orders_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClotApp extends StatelessWidget {
  const ClotApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppResponsive.init(context);
    print(AppResponsive.screenHeight);
    print(AppResponsive.screenWidth);
    return BlocProvider(
      create: (context) => SplashCubit()..appStarted(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
        initialRoute: AppRoutes.splashPage,
        routes: {
          AppRoutes.splashPage: (context) => const SplashPage(),
          AppRoutes.signInPage: (context) => SignIn(),
          AppRoutes.signUpPage: (context) => SignUpPage(),
          AppRoutes.forgotPasswordPage: (context) => ForgotPasswordPage(),
          AppRoutes.passwordRecoverPage: (context) => PasswordRecoverPage(),
          AppRoutes.aboutYourselfPage: (context) => AboutYourselfPage(),
          AppRoutes.homePage: (context) => HomePage(),
          AppRoutes.shopCategoriesPage: (context) => ShopCategoriesPage(),
          AppRoutes.chosenCategoryPage: (context) => ChosenCategoryPage(),
          AppRoutes.notificationsPage: (context) => NotificationsPage(),
          AppRoutes.ordersPage: (context) => OrdersPage(),
          AppRoutes.mainPage: (context) => MainPage(),
        },
      ),
    );
  }
}
