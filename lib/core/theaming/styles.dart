
import 'package:ar/core/theaming/colors.dart';
import 'package:ar/core/theaming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.medium,
    color: Color(0xff000000),
  );
  static TextStyle font75grayBold = TextStyle(
    fontSize: 75.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.gray,
  );
  static TextStyle font75darkBlueBold = TextStyle(
    fontSize: 75.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.darkBlue,
  );
  static TextStyle font75darkredBold = TextStyle(
    fontSize: 75.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.darkred,
  );
  static TextStyle font30darkBlueBold = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.darkBlue,
  );
}
