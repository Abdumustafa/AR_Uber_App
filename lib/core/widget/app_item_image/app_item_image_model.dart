import 'package:flutter/material.dart';

class AppItemImageModel {
  final String itemImage;
  final String? itemText;
  final double? itemHight;
  final double? itemwidth;
  final double? BorderRadius_circular_item;
  final double? BorderRadius_circular_ClipRRect;
  final AlignmentGeometry? Alignment_text;
  final dynamic TextStyles;
  const AppItemImageModel(
      {required this.itemImage,
      this.itemText,
      this.itemHight,
      this.itemwidth,
      this.BorderRadius_circular_item,
      this.BorderRadius_circular_ClipRRect,
      this.Alignment_text,
      this.TextStyles});
}
