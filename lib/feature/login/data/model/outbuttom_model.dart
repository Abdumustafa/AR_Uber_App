import 'package:flutter/material.dart';

 class AppTextButtonModel  {
  final double? borderRadius;
  final dynamic icon;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? iconSize;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  const AppTextButtonModel({
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonHeight,
    this.buttonWidth,
    required this.buttonText,
    required this.textStyle,
    required this.onPressed,
    this.icon,
    this.iconColor,
    this.iconSize,
  });

  
}
