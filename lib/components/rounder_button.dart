import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color? color;
  final String? text;
  final VoidCallback onPressed;
  const RoundedButton(
      {super.key, this.text, this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 5,
        color: color,
        borderRadius: BorderRadius.circular(30),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200,
          child: Text(
            text ?? "",
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
