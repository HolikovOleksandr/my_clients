// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_clients/providers/internet_provider.dart';
import 'package:my_clients/providers/sign_in_provider.dart';
import 'package:my_clients/utils/app_theme.dart';
import 'package:my_clients/utils/config.dart';
import 'package:my_clients/utils/next_screen.dart';
import 'package:my_clients/views/screens/main_screen.dart';
import 'package:my_clients/views/widgets/sign_in_provider_button.dart';
import 'package:my_clients/views/widgets/snack_bar.dart';
import 'package:provider/provider.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  // Google
  final _googleController = RoundedLoadingButtonController();
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
          padding: EdgeInsets.only(left: 40, right: 40, top: 90, bottom: 30),
          child: SizedBox(
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Config.splashScreenImage,
                        height: size.height * .25,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: size.height * .025),
                      Text('Welcome to ', style: AppTheme.subTitle),
                      Text('MyClients', style: AppTheme.title),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SignInProviderButton(
                      onPressed: () {
                        handleGoogleSignIn();
                      },
                      buttonController: _googleController,
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
      ),
    );
  }

// Handling google sign in
  Future handleGoogleSignIn() async {
    final sp = context.read<SignInProvider>();
    final ip = context.read<InternetProvider>();
    await ip.checkInternetConnection();

    if (ip.hasInternet == false) {
      openSnackbar(context, 'Check your connection', Colors.red);
      _googleController.reset();
    } else {
      await sp.signInWithGoogle().then((value) {
        if (sp.hasError == true) {
          openSnackbar(context, sp.errorCode.toString(), Colors.red);
          _googleController.reset();
        } else {
          // Checking user exists
          sp.checkUserExists().then((value) async {
            if (value == true) {
              //user exists
              await sp.getDataFromFirestore(sp.uid).then((value) => sp
                  .saveDataToSharedPreferences()
                  .then((value) => sp.setSignIn().then((value) {
                        _googleController.success();
                        handleAfterSignIn();
                      })));
            } else {
              //user does not exist
              await sp.saveDataToFirestore().then((value) => sp
                  .saveDataToSharedPreferences()
                  .then((value) => sp.setSignIn().then((value) {
                        _googleController.success();
                        handleAfterSignIn();
                      })));
            }
          });
        }
      });
    }
  }

  // Handlr after sign in
  void handleAfterSignIn() {
    Future.delayed(Duration(microseconds: 1000)).then((value) {
      nextScreenReplace(context, MainScreen());
    });
  }
}
