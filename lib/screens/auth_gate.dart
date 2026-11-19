import 'package:flutter/material.dart';
import 'package:pert6/screens/todo_screen.dart';
import '../services/auth/auth_service.dart';
import 'profile_screen.dart';
import 'signin_screen.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthService authService = AuthService();
    return StreamBuilder(
      stream: authService.authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return TodoScreen();
        } else {
          return SignInScreen();
        }
      },
    );
  }
}
