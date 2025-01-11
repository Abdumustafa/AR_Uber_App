import 'package:ar/core/theaming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreIconHomeScreen extends StatelessWidget {
  const MoreIconHomeScreen({super.key, required this.itemImage, this.itemText});
  final String itemImage;
  final String? itemText;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        height: 230.h,
        width: 160.w,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0.r),
          child: Stack(
            children: [
              Image.asset(
                itemImage, // عرض الصورة
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Padding(
                padding: EdgeInsets.all(8.0.r),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                      // "Send or get \n credit instantly",
                      itemText ?? "",
                      style: TextStyles.font16whaiteBold),
                ),
              ),
            ],
          ),
        ));
  }
}
