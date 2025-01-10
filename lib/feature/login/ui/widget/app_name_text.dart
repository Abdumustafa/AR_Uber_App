import 'package:ar/core/theaming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppNameText extends StatelessWidget {
  const AppNameText({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 110.h,
      left: 60.w,
      child: Text.rich(
        TextSpan(
          text: 'Uber',
          style: TextStyles.font75grayBold,
          children: [
            TextSpan(text: 'A', style: TextStyles.font75darkBlueBold),
            TextSpan(
              text: 'R',
              style: TextStyles.font75darkredBold,
            ),
          ],
        ),
      ),
    );
  }
}
