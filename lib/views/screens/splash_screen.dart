import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_clients/providers/sign_in_provider.dart';
import 'package:my_clients/utils/config.dart';
import 'package:my_clients/utils/next_screen.dart';
import 'package:my_clients/views/screens/login_screen.dart';
import 'package:my_clients/views/screens/main_screen.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    final sp = context.read<SignInProvider>();
    super.initState();

    Timer(const Duration(seconds: 2), () {
      !sp.isSignedIn
          ? nextScreen(context, const LoginScreen())
          : nextScreen(context, const MainScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          Config.splashScreenImage,
          height: MediaQuery.of(context).size.height * .35,
        ),
      ),
    );
  }
}
