import 'package:ar/core/theaming/styles.dart';
import 'package:ar/core/widget/app_item_image/app_item_image_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppItemImage extends StatelessWidget {
  const AppItemImage({
    super.key,
    required this.appItemImage,
  });
  final AppItemImageModel appItemImage;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              appItemImage.BorderRadius_circular_item?.r ?? 10.r),
        ),
        height: appItemImage.itemHight ?? 230.h,
        width: appItemImage.itemwidth ?? 160.w,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
              appItemImage.BorderRadius_circular_ClipRRect?.r ?? 10.0.r),
          child: Stack(
            children: [
              Image.asset(
                appItemImage.itemImage,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Padding(
                padding: EdgeInsets.all(8.0.r),
                child: Container(
                  alignment:
                      appItemImage.Alignment_text ?? Alignment.bottomRight,
                  child: Text(appItemImage.itemText ?? "",
                      style: TextStyles.font16whaiteBold),
                ),
              ),
            ],
          ),
        ));
  }
}

// import 'package:ar/core/theaming/styles.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class ItemImageApp extends StatelessWidget {
//   const ItemImageApp({super.key, required this.itemImage, this.itemText});
//   final String itemImage;
//   final String? itemText;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         height: 230.h,
//         width: 160.w,
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(10.0.r),
//           child: Stack(
//             children: [
//               Image.asset(
//                 itemImage, // عرض الصورة
//                 fit: BoxFit.cover,
//                 width: double.infinity,
//                 height: double.infinity,
//               ),
//               Padding(
//                 padding: EdgeInsets.all(8.0.r),
//                 child: Container(
//                   alignment: Alignment.bottomLeft,
//                   child: Text(
//                       // "Send or get \n credit instantly",
//                       itemText ?? "",
//                       style: TextStyles.font16whaiteBold),
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
// }
