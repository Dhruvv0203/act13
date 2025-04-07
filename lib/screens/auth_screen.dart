// screens/auth_screen.dart
import 'package:flutter/material.dart';
import '../widgets/login_form.dart';
import '../widgets/register_form.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool showLogin = true;

  void toggleForm() {
    setState(() {
      showLogin = !showLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(showLogin ? 'Login' : 'Register')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              showLogin ? LoginForm() : RegisterForm(),
              TextButton(
                onPressed: toggleForm,
                child: Text(showLogin
                    ? "Don't have an account? Register"
                    : "Already have an account? Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}