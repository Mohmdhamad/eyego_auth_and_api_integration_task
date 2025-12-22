import 'package:flutter/material.dart';

import '../../../../../core/routes/routes.dart';
import '../widgets/auth_footer.dart';
import '../widgets/auth_header.dart';
import '../widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
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
                RegisterForm(),
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
