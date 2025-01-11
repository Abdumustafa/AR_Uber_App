import 'package:ar/core/helpers/spacing.dart';
import 'package:ar/core/theaming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocateOnMap extends StatelessWidget {
  const LocateOnMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.0.h, left: 16.w, right: 16.w),
      child: Container(
        height: 130.h,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20.w),
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0.h),
              child: Text(
                'هل تحتاج إلى تغيير مدينتك؟',
                style: TextStyles.font16darkBold,
              ),
            ),
            verticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('استخدام موقعي الحالي'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('حدد المدينة'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
