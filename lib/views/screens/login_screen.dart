// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_clients/utils/app_theme.dart';
import 'package:my_clients/utils/config.dart';
import 'package:my_clients/views/widgets/sign_in_provider_button.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  // Google
  final _googleButtonController = RoundedLoadingButtonController();
  final _googleButtonColor = Colors.red.shade600;
  final _googleButtonText = 'Sign In with Google';
  final _googleButtonIcon = FontAwesomeIcons.google;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppTheme.sixstage,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 10, right: 10, bottom: 10, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      Config.splashScreenImage,
                      height: size.height * .2,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: size.height * .02),
                    Text(
                      'Welcome to Login',
                      style: AppTheme.subTitle,
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SignInProviderButton(
                    onPressed: () {},
                    buttonController: _googleButtonController,
                    buttonColor: _googleButtonColor,
                    text: _googleButtonText,
                    icon: _googleButtonIcon,
                    size: size,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
