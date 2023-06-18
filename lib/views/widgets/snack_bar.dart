import 'package:flutter/material.dart';
import 'package:my_clients/utils/app_theme.dart';

void openSnackbar(context, snackMassage, color) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      action: SnackBarAction(
        label: 'Ok',
        textColor: AppTheme.darkPrimary,
        onPressed: () {},
      ),
      backgroundColor: color,
      content: Text(
        snackMassage,
        style: AppTheme.subText.copyWith(
          color: AppTheme.darkPrimary,
        ),
      ),
    ),
  );
}
