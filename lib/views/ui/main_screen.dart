import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F6FE),
      appBar: AppBar(
        title: const Text('My Clients'),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
    );
  }
}
