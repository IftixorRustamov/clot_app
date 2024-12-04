import 'package:clot_app/config/app_responsive.dart';
import 'package:clot_app/config/routes/app_routes.dart';
import 'package:clot_app/config/themes/app_theme.dart';
import 'package:clot_app/presentation/pages/forgot_password_page.dart';
import 'package:clot_app/presentation/pages/sign_in.dart';
import 'package:clot_app/presentation/pages/sign_up_page.dart';
import 'package:clot_app/presentation/pages/splash_page.dart';
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
      initialRoute: splashPage,
      theme: lightTheme,
      darkTheme: darkTheme,
      routes: {
        splashPage: (context) => const SplashPage(),
        signInPage: (context) => SignIn(),
        signUpPage: (context) => SignUpPage(),
        forgotPasswordPage: (context) => ForgotPasswordPage(),
      },
    );
  }
}
