import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String? hintText;
  final Function(String value) onChanged;
  final bool? obscureText;
  final String? obscuringCharacter;
  final TextInputType? keyboardType;
  const InputTextField(
      {super.key,
      this.hintText,
      required this.onChanged,
      this.obscureText,
      this.obscuringCharacter,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      textAlign: TextAlign.center,
      obscuringCharacter: obscuringCharacter ?? ".",
      onChanged: onChanged,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding:
            const EdgeInsetsDirectional.symmetric(vertical: 10, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blueAccent, width: 1),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blueAccent, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
