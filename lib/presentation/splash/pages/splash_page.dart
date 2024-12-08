import 'package:clot_app/config/routes/app_routes.dart';
import 'package:clot_app/core/configs/theme/app_colors.dart';
import 'package:clot_app/core/configs/assets/app_vectors.dart';
import 'package:clot_app/presentation/splash/bloc/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          Navigator.of(context).pushReplacementNamed(AppRoutes.signInPage);
        }

        if (state is Authenticated) {
          Navigator.of(context).pushReplacementNamed(AppRoutes.homePage);
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.purple,
        body: Center(child: Image.asset(AppVectors.appLogo)),
      ),
    );
  }
}
