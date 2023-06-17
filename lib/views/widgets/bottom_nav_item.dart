import 'package:flutter/material.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
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
      child: SizedBox(
        height: 36,
        width: 36,
        child: Icon(icon, color: color)
      ),
    );
  }
}
