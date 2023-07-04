import 'package:flutter/material.dart';

class DoneTab extends StatelessWidget {
const DoneTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Center(
        child: Text(
          'Done record',
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