import 'package:ar/core/helpers/spacing.dart';
import 'package:ar/core/theaming/colors.dart';
import 'package:ar/core/theaming/styles.dart';
import 'package:ar/feature/home/data/home_choise_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenChoiseItem extends StatelessWidget {
  const HomeScreenChoiseItem({
    super.key,
    required this.homeChoiseItemModel,
  });
  final HomeChoiseItemModel homeChoiseItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: homeChoiseItemModel.itemWidth?.h ?? 110.h,
      width: homeChoiseItemModel.itemHeight?.w ?? 110.w,
      decoration: BoxDecoration(
        color: homeChoiseItemModel.itemColor ?? ColorsManager.veryLightGray,
        borderRadius:
            BorderRadius.circular(homeChoiseItemModel.itemBorderRadius ?? 5.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: homeChoiseItemModel.circleAvatarRadius?.r ?? 30.r,
            backgroundColor: homeChoiseItemModel.circleAvatarBackgroundColor ??
                ColorsManager.gray,
            child: Icon(homeChoiseItemModel.icon,
                color: homeChoiseItemModel.iconColor ?? ColorsManager.whaite,
                size: homeChoiseItemModel.iconSize ?? 30.sp),
          ),
          verticalSpace(8),
          Text(homeChoiseItemModel.label!, style: TextStyles.font9darkBold),
        ],
      ),
    );
  }
}
