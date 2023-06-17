import 'package:flutter/material.dart';
import 'package:my_clients/views/ui/auth_screen.dart';

class CoreApp extends StatelessWidget {
  const CoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthScreen(),
    );
  }
}
