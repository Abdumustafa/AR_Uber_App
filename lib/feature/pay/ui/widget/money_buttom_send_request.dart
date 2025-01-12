import 'package:ar/core/helpers/spacing.dart';
import 'package:ar/core/theaming/colors.dart';
import 'package:ar/core/theaming/styles.dart';
import 'package:ar/core/widget/app_egp_money/app_egp_money.dart';
import 'package:ar/core/widget/app_egp_money/app_egp_money_model.dart';
import 'package:ar/core/widget/app_elevatebuttom/elevate_buttom_app.dart';
import 'package:ar/core/widget/app_outlinebuttom/outline_buttom_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoneyButtomSendRequest extends StatelessWidget {
  const MoneyButtomSendRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.lightorange,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.r),
            bottomRight: Radius.circular(30.r)),
      ),
      height: 200.h,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(18.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppEgpMoney(
              appEgpMoneyModel: AppEgpMoneyModel(
                  firstText: "EGP ",
                  firstTextStyle: TextStyles.font30blackbold,
                  secondTextStyle: TextStyles.font30darkBlueBold,
                  secondText: "0"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Manage wallet ', style: TextStyles.font18blackmedium),
                Icon(Icons.arrow_forward)
              ],
            ),
            verticalSpace(10),
            Padding(
              padding: EdgeInsets.only(top: 30.h, left: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppTextElevatedButton(
                    model: AppTextButtonModel(
                        buttonText: "Send cradit ",
                        textStyle: TextStyles.font14backmedium,
                        onPressed: () {},
                        icon: Icons.arrow_upward_outlined,
                        buttonHeight: 40,
                        buttonWidth: 130),
                  ),
                  AppTextElevatedButton(
                    model: AppTextButtonModel(
                        buttonText: "Request cradit ",
                        textStyle: TextStyles.font14backmedium,
                        onPressed: () {},
                        icon: Icons.arrow_downward,
                        buttonHeight: 40,
                        buttonWidth: 150),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
