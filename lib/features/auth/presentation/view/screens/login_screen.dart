import 'package:flutter/material.dart';

import '../../../../../core/routes/routes.dart';
import '../../../../../core/utils/app_sizes.dart';
import '../widgets/auth_footer.dart';
import '../widgets/auth_header.dart';
import '../widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppSizes.h28,
          horizontal: AppSizes.w24,
        ),
        child: SafeArea(
          top: true,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AuthHeaderMessage(
                  title: 'Welcome Back',
                  subtitle: 'Login Now',
                ),
                SizedBox(height: AppSizes.h20),
                const LoginForm(),
                SizedBox(height: AppSizes.h20),
                AuthFooterAction(
                  question: "Don't have an account ?",
                  actionText: "Register Now",
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.register);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
