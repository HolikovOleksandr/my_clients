import 'package:my_clients/utils/app_theme.dart';
import 'package:my_clients/providers/main_screen_provider.dart';
import 'package:my_clients/views/widgets/bottom_nav_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Consumer<MainScreenProvider>(
      builder: (context, mainScreenNotifier, child) => SafeArea(
        child: Container(
          height: size.height * .09,
          color: AppTheme.sevenstage,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BottomNavItem(
                onTab: () => mainScreenNotifier.pageIndex = 0,
                icon: Icons.home,
                lable: 'Home',
                color: _isActiveTab(0, mainScreenNotifier),
              ),
              BottomNavItem(
                onTab: () => mainScreenNotifier.pageIndex = 1,
                icon: Icons.calendar_today,
                lable: 'Dates',
                color: _isActiveTab(1, mainScreenNotifier),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: FloatingActionButton(
                  onPressed: () => mainScreenNotifier.pageIndex = 2,
                  backgroundColor: AppTheme.primary,
                  child: const Icon(
                    Icons.add_rounded,
                    size: 34,
                    color: AppTheme.sixstage,
                  ),
                ),
              ),
              BottomNavItem(
                onTab: () => mainScreenNotifier.pageIndex = 3,
                icon: Icons.domain_verification_sharp,
                lable: 'Done',
                color: _isActiveTab(3, mainScreenNotifier),
              ),
              BottomNavItem(
                onTab: () => mainScreenNotifier.pageIndex = 4,
                icon: Icons.account_box,
                lable: 'User',
                color: _isActiveTab(4, mainScreenNotifier),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _isActiveTab(int index, var mainScreenNotifier) {
    return mainScreenNotifier.pageIndex == index
        ? AppTheme.primary
        : AppTheme.tertiary;
  }
}
