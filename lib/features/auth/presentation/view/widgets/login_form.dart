import 'package:flutter/material.dart';

import '../../../../../core/utils/validator.dart';
import 'auth_form_field.dart';
import 'login_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AuthTextFormField(
            controller: _emailController,
            hintText: "enter your password",
            validator: AppValidators.validateEmail,
          ),
          AuthTextFormField(
            controller: _passwordController,
            isPassword: true,
            isObscureText: true,
            hintText: "enter your password",
            validator: AppValidators.validatePassword,
          ),
          const SizedBox(height: 20),
          LoginButton(
            formKey: _formKey,
            emailController: _emailController,
            passwordController: _passwordController,
          ),
        ],
      ),
    );
  }
}
