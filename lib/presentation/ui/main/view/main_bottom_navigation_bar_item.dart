import 'package:flutter/material.dart';
import 'package:frazex_task/presentation/shared/colors.dart';

class MainBottomNavigationBarItem extends BottomNavigationBarItem {
  final String label;
  final String imagePath;

  MainBottomNavigationBarItem({required this.label, required this.imagePath})
      : super(
          label: label,
          icon: SizedBox(
            width: 20,
            height: 20,
            child: Image.asset(imagePath),
          ),
          activeIcon: SizedBox(
            width: 21,
            height: 21,
            child: Image.asset(imagePath, color: UIColor.black),
          ),
        );
}
