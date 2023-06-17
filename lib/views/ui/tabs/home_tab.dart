import 'package:flutter/material.dart';
import 'package:my_clients/views/widgets/client_card.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ClientCardWidget(size: size),
        ),
      ),
    );
  }
}
