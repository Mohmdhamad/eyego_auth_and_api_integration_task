import 'package:flutter/material.dart';

import '../../../../../core/utils/validator.dart';
import 'auth_form_field.dart';
import 'register_button.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AuthTextFormField(
            controller: _nameController,
            hintText: "enter your name",
            validator: AppValidators.validateName,
          ),
          AuthTextFormField(
            controller: _emailController,
            hintText: "enter your email",
            validator: AppValidators.validateEmail,
          ),
          AuthTextFormField(
            controller: _passwordController,
            isPassword: true,
            isObscureText: true,
            hintText: "enter your password",
            validator: AppValidators.validatePassword,
          ),
          AuthTextFormField(
            controller: _confirmPasswordController,
            isPassword: true,
            isObscureText: true,
            hintText: "confirm your password",
            validator: (value) => AppValidators.validateConfirmPassword(
              value,
              _passwordController.text,
            ),
          ),
          const SizedBox(height: 20),
          RegisterButton(
            formKey: _formKey,
            nameController: _nameController,
            emailController: _emailController,
            passwordController: _passwordController,
          ),
        ],
      ),
    );
  }
}
