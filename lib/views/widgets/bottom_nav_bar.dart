import 'package:my_clients/app_theme.dart';
import 'package:my_clients/controllers/main_screen_provider.dart';
import 'package:my_clients/views/widgets/bottom_nav_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  Color _isActiveTab(int index, var mainScreenNotifier) {
    return mainScreenNotifier.pageIndex == index
        ? AppTheme.primaryColorStyle
        : AppTheme.secondaryColorStyle;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) => SafeArea(
        child: Container(
          height: size.height * .09,
          color: AppTheme.bottomNavBarColorStyle,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BottomNavWidget(
                onTab: () => mainScreenNotifier.pageIndex = 0,
                icon: Icons.home,
                lable: 'Home',
                color: _isActiveTab(0, mainScreenNotifier),
              ),
              BottomNavWidget(
                onTab: () => mainScreenNotifier.pageIndex = 1,
                icon: Icons.calendar_today,
                lable: 'Dates',
                color: _isActiveTab(1, mainScreenNotifier),
              ),
              SizedBox(
                width: 66,
                child: FloatingActionButton(
                  onPressed: () => mainScreenNotifier.pageIndex = 2,
                  backgroundColor: AppTheme.primaryColorStyle,
                  child: const Icon(Icons.add_rounded, size: 34),
                ),
              ),
              BottomNavWidget(
                onTab: () => mainScreenNotifier.pageIndex = 3,
                icon: Icons.domain_verification_sharp,
                lable: 'Done',
                color: _isActiveTab(3, mainScreenNotifier),
              ),
              BottomNavWidget(
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
}
