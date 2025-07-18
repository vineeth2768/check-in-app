import 'package:check_in_app/screens/home.dart';
import 'package:check_in_app/utils/app_colors.dart';
import 'package:check_in_app/widgets/bottomnavigation.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> with WidgetsBindingObserver {
  late int selectedIndex;

  // Define the pages for your bottom navigation bar
  final List pages = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  @override
  void initState() {
    super.initState();
    selectedIndex = 0;
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      body: pages[selectedIndex],

      bottomNavigationBar: SafeArea(
        child: BottomNavigation(
          selectedIndex: selectedIndex,
          onItemTapped: onItemTapped,
        ),
      ),
    );
  }
}
