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
    return Expanded(
      child: GestureDetector(
        onTap: onTab,
        child: Column(
          children: [
            const SizedBox(height: 8),
            Icon(
              icon,
              size: 28,
              color: color,
            ),
            Text(
              lable,
              style: TextStyle(
                fontSize: 14,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
