import 'package:flutter/material.dart';

class HomeChoiseItemModel {
  final IconData? icon;
  final String? label;
  final Color? iconColor;
  final Color? itemColor;
  final double? iconSize;
  final double? itemWidth;
  final double? itemHeight;
  final double? itemBorderRadius;
  final double? circleAvatarRadius;
  final Color? circleAvatarBackgroundColor;
  const HomeChoiseItemModel(
      {required this.icon,
      required this.label,
      this.iconColor,
      this.itemColor,
      this.iconSize,
      this.itemWidth,
      this.itemHeight,
      this.itemBorderRadius,
      this.circleAvatarRadius,
      this.circleAvatarBackgroundColor});
}
