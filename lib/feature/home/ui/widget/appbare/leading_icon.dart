import 'package:ar/core/theaming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeadingIcon extends StatelessWidget {
  const LeadingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.h),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.lightorange,
          borderRadius: BorderRadius.circular(30.w),
        ),
        child: IconButton(
          icon: Icon(
            Icons.menu,
            color: ColorsManager.darkBlue,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
