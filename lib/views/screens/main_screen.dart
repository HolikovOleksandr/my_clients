import 'package:flutter/material.dart';
import 'package:my_clients/utils/app_theme.dart';
import 'package:my_clients/controllers/main_screen_provider.dart';
import 'package:my_clients/views/screens/tabs/tabs_import.dart';
import 'package:my_clients/views/widgets/bottom_nav_bar.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> tabList = const [
    HomeTab(),
    DateSoartTab(),
    CreateTab(),
    DoneTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenProvider>(
      builder: (context, mainScreenNotifier, child) {
        return Scaffold(
          backgroundColor: AppTheme.sixstage,
          body: tabList[mainScreenNotifier.pageIndex],
          bottomNavigationBar: const BottomNavBar(),
        );
      },
    );
  }
}
