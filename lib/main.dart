import 'package:fire_chat/screens/chat_screen.dart';
import 'package:fire_chat/screens/login_screen.dart';
import 'package:fire_chat/screens/registration_screen.dart';
import 'package:fire_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Chat());
}

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id:(context) => WelcomeScreen(),
        LoginScreen.id:(context) => LoginScreen(),
        RegistrationScreen.id:(context) => RegistrationScreen(),
        ChatScreen.id:(context) => ChatScreen(),
        
        
      }
    );
  }
}
