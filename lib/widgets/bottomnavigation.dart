import 'package:check_in_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavigation({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        color: AppColors.primaryDark,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),

        border: Border(
          top: BorderSide(color: AppColors.boarderSideColor),
          left: BorderSide(color: AppColors.boarderSideColor),
          right: BorderSide(color: AppColors.boarderSideColor),
          bottom: BorderSide.none,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildNavItem("assets/icons/home.png", "Home", 0),
          _buildNavItem("assets/icons/activities.png", "Activities", 1),
          _buildNavItem("assets/icons/jobs.png", "Jobs", 2),
          _buildNavItem("assets/icons/notification.png", "Notification", 3),
        ],
      ),
    );
  }

  Widget _buildNavItem(String icon, String label, int index) {
    final bool isSelected = widget.selectedIndex == index;
    final Color iconColor = isSelected
        ? AppColors.accentOrange
        : AppColors.textLight;
    final Color textColor = isSelected
        ? AppColors.accentOrange
        : AppColors.textLight;

    return GestureDetector(
      onTap: () => widget.onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(icon, color: iconColor, height: 24),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: textColor,
              fontSize: 12,
              fontFamily: 'DM Sans',
            ),
          ),
        ],
      ),
    );
  }
}
