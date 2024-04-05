import 'package:fire_chat/components/input_text_field.dart';
import 'package:fire_chat/components/rounder_button.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  static String id = "login_screen";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Hero(
              tag: "logo",
              child: Image(
                image: AssetImage("images/chat.png"),
                width: 150,
                height: 150,
              ),
            ),
            const SizedBox(height: 60),
            InputTextField(
              hintText: "Enter you email", onChanged: (value) {
                
              },
            ),
            const SizedBox(height: 10),
             InputTextField(
              obscureText: true,
              hintText: "Enter you password", onChanged: (value) {
                
              },
            ),
            const SizedBox(height: 20),
            RoundedButton(
              text: "Login",
              onPressed: () {},
              color: Colors.blueAccent,
            )
          ],
        ),
      ),
    );
  }
}

