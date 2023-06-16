import 'package:flutter/material.dart';

class DateSoartTab extends StatelessWidget {
  const DateSoartTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Date soart record',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}
