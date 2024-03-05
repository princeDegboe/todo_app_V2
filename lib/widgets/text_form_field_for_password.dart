import 'package:flutter/material.dart';

class TextFormFieldForPassword extends StatefulWidget {
  const TextFormFieldForPassword({
    super.key,
    this.validator,
    required this.hintText,
    required this.controller,
  });
  final String? Function(String?)? validator;
  final String hintText;
  final TextEditingController controller;
  @override
  State<TextFormFieldForPassword> createState() =>
      _TextFormFieldForPasswordState();
}

class _TextFormFieldForPasswordState extends State<TextFormFieldForPassword> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: widget.controller,
        obscureText: isPasswordVisible,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(vertical: 7),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.5),
          ),
          prefixIcon: const Icon(Icons.lock),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isPasswordVisible = !isPasswordVisible;
              });
            },
            icon: isPasswordVisible
                ? const Icon(Icons.visibility_outlined)
                : const Icon(
                    Icons.visibility_off_outlined,
                  ),
          ),
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
        ));
  }
}
