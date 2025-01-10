import 'package:ar/core/theaming/colors.dart';
import 'package:ar/feature/login/data/model/outbuttom_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppTextButton extends StatelessWidget {
  final AppTextButtonModel model;
  const AppTextButton({
    super.key,
    required this.model, 
    });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(model.borderRadius ?? 20.0),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(
          model.backgroundColor ?? ColorsManager.moreLightGray,
        ),
        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: model.horizontalPadding?.w ?? 12.w,
            vertical: model.verticalPadding?.h ?? 14.h,
          ),
        ),
        fixedSize: WidgetStateProperty.all(
          Size(model.buttonWidth?.w ?? double.maxFinite,
              model.buttonHeight ?? 50.h),
        ),
      ),
      onPressed: model.onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            model.buttonText,
            style: model.textStyle,
          ),
          FaIcon(model.icon, color: model.iconColor, size: model.iconSize)
        ],
      ),
    );
  }
}
