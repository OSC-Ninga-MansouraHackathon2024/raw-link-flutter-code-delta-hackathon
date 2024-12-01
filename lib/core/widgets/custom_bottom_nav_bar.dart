import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theming/colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;

  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    ndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(
            icon: FontAwesomeIcons.house,
            label: "Home",
            isSelected: selectedIndex == 0,
            onTap: () => onTap(0),
          ),
          _buildNavItem(
            icon: FontAwesomeIcons.bell,
            label: "Notifications",
            isSelected: selectedIndex == 1,
            onTap: () => onTap(1),
          ),
          _buildNavItem(
            icon: FontAwesomeIcons.comment,
            label: "Chat",
            isSelected: selectedIndex == 2,
            onTap: () => onTap(2),
          ),
          _buildNavItem(
            icon: FontAwesomeIcons.user,
            label: "Profile",
            isSelected: selectedIndex == 3,
            onTap: () => onTap(3),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // الخط العلوي للأيقونة
          if (isSelected)
            Container(
              width: 79,
              height: 4,
              color: AppColors.primaryColor,
              margin: const EdgeInsets.only(
                  bottom: 8), // المسافة بين الخط والأيقونة
            ),
          FaIcon(
            icon,
            color: isSelected ? AppColors.primaryColor : Colors.black54,
            size: 24,
          ),
          const SizedBox(height: 4), // مسافة بين الأيقونة والنص
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: isSelected ? AppColors.primaryColor : Colors.black54,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
