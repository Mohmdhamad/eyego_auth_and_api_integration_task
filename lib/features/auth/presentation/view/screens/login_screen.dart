import 'package:flutter/material.dart';
import '../../../../../core/routes/routes.dart';
import '../widgets/auth_footer.dart';
import '../widgets/auth_header.dart';
import '../widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  title: 'Welcome Back',
                  subtitle: 'Login Now',
                ),
                const SizedBox(height: 20),
                const LoginForm(),
                const SizedBox(height: 20),
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
