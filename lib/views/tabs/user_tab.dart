// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_clients/providers/sign_in_provider.dart';
import 'package:my_clients/utils/app_theme.dart';
import 'package:provider/provider.dart';

class UserTab extends StatefulWidget {
  const UserTab({Key? key}) : super(key: key);

  @override
  State<UserTab> createState() => _UserTabState();
}

class _UserTabState extends State<UserTab> {
  Future getData() async {
    final sp = context.read<SignInProvider>();
    sp.getDataFromSharedPreferences();
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    final sp = context.read<SignInProvider>();
    final cornerRadius = Radius.circular(30);
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: size.height * .33,
              width: size.width,
              decoration: BoxDecoration(
                gradient: AppTheme.gradient,
                borderRadius: BorderRadius.only(
                  bottomLeft: cornerRadius,
                  bottomRight: cornerRadius,
                ),
              ),
            ),
            Positioned(
              left: size.width * .05,
              top: size.height * .05,
              child: Text(
                'My Profile',
                style: AppTheme.subTitle.copyWith(
                  color: AppTheme.sevenstage,
                ),
              ),
            ),
            Positioned(
              left: size.width * .5 - size.width * .2,
              child: CircleAvatar(radius: size.width * .2),
            ),
          ],
        ),
      ),
    );
  }
}
