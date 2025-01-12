import 'package:ar/core/theaming/colors.dart';
import 'package:ar/feature/home/data/home_choise_item_model.dart';
import 'package:ar/feature/home/ui/widget/body/homescreen_choise_item.dart';
import 'package:flutter/material.dart';

class PaidAndScaanItems extends StatelessWidget {
  const PaidAndScaanItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HomeScreenChoiseItem(
          homeChoiseItemModel: HomeChoiseItemModel(
              circleAvatarBackgroundColor: ColorsManager.whaite,
              itemColor: ColorsManager.whaite,
              icon: Icons.vertical_split_sharp,
              iconColor: ColorsManager.orange,
              label: "Easy spilt"),
        ),
        HomeScreenChoiseItem(
          homeChoiseItemModel: HomeChoiseItemModel(
              circleAvatarBackgroundColor: ColorsManager.whaite,
              itemColor: ColorsManager.whaite,
              icon: Icons.currency_exchange,
              iconColor: ColorsManager.orange,
              label: "Get paid"),
        ),
        HomeScreenChoiseItem(
          homeChoiseItemModel: HomeChoiseItemModel(
              circleAvatarBackgroundColor: ColorsManager.whaite,
              itemColor: ColorsManager.whaite,
              icon: Icons.qr_code_scanner,
              iconColor: ColorsManager.orange,
              label: "scan & pay"),
        ),
      ],
    );
  }
}
