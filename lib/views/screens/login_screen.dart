// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_clients/utils/app_theme.dart';
import 'package:my_clients/utils/config.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      Config.splashScreenImage,
                      height: size.height * .2,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Authentification',
                      style: AppTheme.title,
                    ),
                    Text(
                      'Authentification',
                      style: AppTheme.subTitle,
                    ),
                    Text(
                      'Authentification',
                      style: AppTheme.text,
                    ),
                    Text(
                      'Authentification',
                      style: AppTheme.subText,
                    ),
                    Text(
                      'Authentification',
                      style: AppTheme.hintText,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
