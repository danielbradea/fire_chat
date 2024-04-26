import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fire_chat/components/rounder_button.dart';
import 'package:fire_chat/screens/login_screen.dart';
import 'package:fire_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = "welcome_screen";
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
  
  }

class _WelcomeScreenState extends State<WelcomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
            const SizedBox(width: 20),
            Center(
              child: AnimatedTextKit(
                repeatForever: false,
                animatedTexts: [
                  TypewriterAnimatedText("Chat App",
                      speed: const Duration(milliseconds: 200),
                      cursor: "_",
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 20))
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            RoundedButton(
                text: "Login",
                color: Colors.blueAccent,
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                }),
            const SizedBox(height: 5),
            RoundedButton(
                text: "Register",
                color: Colors.lightBlue,
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                }),
          ],
        ),
      ),
    );
  }
}
