import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';

class AuthTextFormField extends StatefulWidget {
  Color? filledColor;
  Color borderColor;
  TextStyle? hintStyle;
  String? hintText;
  Widget? label;
  TextStyle? labelStyle;
  Widget? prefixIcon;
  Widget? suffixIcon;
  TextEditingController? controller;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  bool isObscureText;
  bool isPassword;
  TextStyle? textStyle;
  bool readonly;

  AuthTextFormField({
    super.key,
    this.controller,
    this.validator,
    this.hintText,
    this.hintStyle,
    this.textStyle,
    this.label,
    this.labelStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.isPassword = false,
    this.isObscureText = false,
    this.filledColor = AppColors.white,
    this.keyboardType = TextInputType.text,
    this.borderColor = AppColors.black,
    this.readonly = false,
  });

  @override
  State<AuthTextFormField> createState() => _AuthTextFormFieldState();
}

class _AuthTextFormFieldState extends State<AuthTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12, bottom: 20),
      child: TextFormField(
        style: widget.textStyle,
        obscureText: widget.isObscureText,
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        validator: widget.validator,
        readOnly: widget.readonly,
        decoration: InputDecoration(
          filled: true,
          fillColor: widget.filledColor,
          hintText: widget.hintText,
          hintStyle: widget.hintStyle,
          label: widget.label,
          labelStyle: widget.labelStyle,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    widget.isObscureText = !widget.isObscureText;
                    setState(() {});
                  },
                  icon: Icon(
                    widget.isObscureText
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                )
              : widget.suffixIcon,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: widget.borderColor, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: widget.borderColor, width: 1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: AppColors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: AppColors.red),
          ),
        ),
      ),
    );
  }
}
