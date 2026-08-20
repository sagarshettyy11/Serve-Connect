import 'package:flutter/material.dart';
import 'screens/auth/login-screen.dart';
import 'screens/auth/register-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serve Connect',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF700B28), primary: const Color(0xFF700B28)),
        useMaterial3: true,
      ),
      initialRoute: '/login',
      routes: {'/login': (context) => const LoginScreen(), '/register': (context) => const RegisterScreen()},
    );
  }
}
