import 'package:flutter/material.dart';

class CreateTab extends StatelessWidget {
  const CreateTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Create record',
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
