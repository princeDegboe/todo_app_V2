import 'package:flutter/material.dart';

class TextFormFieldCard extends StatelessWidget {
  const TextFormFieldCard({
    super.key,
    this.controller,
    this.maxLines,
    this.textInputType,
    this.obscureText = false,
    this.initialValue,
    this.onChanged,
    this.onSaved,
    this.onTap,
    this.validator,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.labelText,
    this.readOnly = false
  });
  final TextEditingController? controller;
  final int? maxLines;
  final TextInputType? textInputType;
  final bool obscureText;
  final String? initialValue;
  final void Function(String?)? onChanged;
  final void Function(String?)? onSaved;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? labelText;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      keyboardType: textInputType,
      obscureText: obscureText,
      initialValue: initialValue,
      onChanged: onChanged,
      onSaved: onSaved,
      onTap: onTap,
      validator: validator,
      style: const TextStyle(
        color: Colors.black,
      ),
      readOnly: readOnly,
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(vertical: 7,horizontal: 10),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.5),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color: Colors.orange),
        ),
      ),
    );
  }
}
