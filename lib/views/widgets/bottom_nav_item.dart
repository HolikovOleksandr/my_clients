import 'package:flutter/material.dart';
import 'package:my_clients/utils/app_theme.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    required this.onTab,
    required this.icon,
    required this.color,
    required this.lable,
    super.key,
  });

  final IconData icon;
  final void Function()? onTab;
  final Color color;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 36,
            width: 36,
            child: Icon(icon, color: color),
          ),
          Text(
            lable,
            style: AppTheme.hintText.copyWith(color: color),
          ),
        ],
      ),
    );
  }
}
