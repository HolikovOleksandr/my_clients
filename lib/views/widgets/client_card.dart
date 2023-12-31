// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_clients/utils/app_theme.dart';

class ClientCardWidget extends StatelessWidget {
  const ClientCardWidget({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PhysicalModel(
        color: Colors.transparent,
        elevation: 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: size.width,
            height: size.height * .18,
            color: AppTheme.sixstage,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      color: AppTheme.secondary,
                      height: size.height,
                      width: size.width * .035,
                    ),
                    SizedBox(width: size.width * .035),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: AppTheme.title.copyWith(
                              color: AppTheme.darkPrimary,
                            ),
                            children: <TextSpan>[
                              TextSpan(text: 'First '),
                              TextSpan(text: 'Lastname'),
                            ],
                          ),
                        ),
                        // Number
                        Text(
                          '+380123456789',
                          style: AppTheme.title,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '90',
                                style: AppTheme.title.copyWith(
                                  color: AppTheme.darkPrimary,
                                ),
                              ),
                              TextSpan(
                                text: ' Anti-cellulite',
                                style: AppTheme.text.copyWith(
                                  color: AppTheme.darkPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Today at: ',
                                style: AppTheme.text.copyWith(
                                  color: AppTheme.darkPrimary,
                                ),
                              ),
                              TextSpan(
                                text: '16:20',
                                style: AppTheme.text.copyWith(
                                  color: AppTheme.darkPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [Icon(Icons.edit)],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
