import 'package:clot_app/config/app_responsive.dart';
import 'package:clot_app/config/routes/app_routes.dart';
import 'package:clot_app/config/themes/app_theme.dart';
import 'package:clot_app/presentation/pages/auth/about_yourself_page.dart';
import 'package:clot_app/presentation/pages/auth/forgot_password_page.dart';
import 'package:clot_app/presentation/pages/auth/password_recover_page.dart';
import 'package:clot_app/presentation/pages/auth/sign_up_page.dart';
import 'package:clot_app/presentation/pages/auth/splash_page.dart';

import 'package:clot_app/presentation/pages/auth/sign_in.dart';
import 'package:clot_app/presentation/pages/home/main_home_page.dart';
import 'package:clot_app/presentation/pages/home/shop_categories_page.dart';

import 'package:flutter/material.dart';

class ClotApp extends StatelessWidget {
  const ClotApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppResponsive.init(context);
    print(AppResponsive.screenHeight);
    print(AppResponsive.screenWidth);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashPage,
      theme: lightTheme,
      darkTheme: darkTheme,
      routes: {
        AppRoutes.splashPage: (context) => const SplashPage(),
        AppRoutes.signInPage: (context) => SignIn(),
        AppRoutes.signUpPage: (context) => SignUpPage(),
        AppRoutes.forgotPasswordPage: (context) => ForgotPasswordPage(),
        AppRoutes.passwordRecoverPage: (context) => PasswordRecoverPage(),
        AppRoutes.aboutYourselfPage: (context) => AboutYourselfPage(),
        AppRoutes.mainHomePage: (context) => MainHomePage(),
        AppRoutes.shopCategoriesPage: (context) => ShopCategoriesPage(),
      },
    );
  }
}
