import 'package:flutter/material.dart';

import '../../../../../core/routes/routes.dart';
import '../../../../../core/utils/app_sizes.dart';
import '../widgets/auth_footer.dart';
import '../widgets/auth_header.dart';
import '../widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
              children: [
                const AuthHeaderMessage(
                  title: 'Welcome ',
                  subtitle: 'Join Us Now',
                ),
                const RegisterForm(),
                SizedBox(height: AppSizes.h20),
                AuthFooterAction(
                  question: "Already have an account !",
                  actionText: "Login Now",
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.login);
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
