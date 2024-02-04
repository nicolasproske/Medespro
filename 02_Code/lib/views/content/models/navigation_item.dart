import 'package:flutter/material.dart';

class NavigationItemModel {
  final IconData icon;
  final IconData? selectedIcon;
  final String label;
  final Widget content;

  NavigationItemModel(
      {required this.icon,
      this.selectedIcon,
      required this.label,
      required this.content});
}
