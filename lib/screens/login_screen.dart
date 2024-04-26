import 'package:fire_chat/components/input_text_field.dart';
import 'package:fire_chat/components/rounder_button.dart';
import 'package:fire_chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  static String id = "login_screen";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  bool _saving = false;
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: _saving,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Hero(
                tag: "logo",
                child: Image(
                  image: AssetImage("images/chat.png"),
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 60),
              InputTextField(
                keyboardType: TextInputType.emailAddress,
                hintText: "Enter you email",
                onChanged: (value) {
                  email = value;
                },
              ),
              const SizedBox(height: 10),
              InputTextField(
                obscureText: true,
                hintText: "Enter you password",
                onChanged: (value) {
                  password = value;
                },
              ),
              const SizedBox(height: 20),
              RoundedButton(
                text: "Login",
                onPressed: () async {
                  setState(() {
                    _saving = true;
                  });
                  try {
                    var user = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    if (user != null) {
                      Navigator.pushNamed(context, ChatScreen.id);
                    }
                  } catch (e) {
                    print(e);
                  }
                  setState(() {
                    _saving = false;
                  });
                },
                color: Colors.blueAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
