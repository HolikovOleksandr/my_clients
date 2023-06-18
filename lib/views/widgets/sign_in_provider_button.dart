// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:my_clients/utils/app_theme.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class SignInProviderButton extends StatelessWidget {
  SignInProviderButton({
    super.key,
    required this.buttonController,
    required this.buttonColor,
    required this.size,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  var buttonController = RoundedLoadingButtonController();
  final Color buttonColor;
  final Size size;
  final String text;
  final IconData? icon;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return RoundedLoadingButton(
      controller: buttonController,
      successColor: buttonColor,
      color: buttonColor,
      width: size.width * .8,
      elevation: 0,
      borderRadius: 25,
      onPressed: onPressed,
      child: Wrap(
        children: [
          Icon(
            icon,
            color: AppTheme.sixstage,
            size: 20,
          ),
          const SizedBox(width: 15),
          Text(
            text,
            style: AppTheme.subText.copyWith(
              color: AppTheme.sixstage,
            ),
          )
        ],
      ),
    );
  }
}
