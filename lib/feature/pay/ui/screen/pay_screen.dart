import 'package:ar/core/theaming/colors.dart';
import 'package:ar/core/theaming/styles.dart';

import 'package:ar/core/widget/app_bare_menu_icon.dart';
import 'package:ar/feature/pay/ui/widget/add_funds_image.dart';
import 'package:ar/feature/pay/ui/widget/money_buttom_send_request.dart';
import 'package:ar/feature/pay/ui/widget/paid_and_scaan_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PayScreen extends StatelessWidget {
  const PayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.lightorange,
        title: Text(
          'Pay',
          style: TextStyles.font22blackbold,
        ),
        centerTitle: true,
        actions: [
          AppBareMenuIcon(),
        ],
      ),
      body: Container(
        color: ColorsManager.whaite,
        child: Column(
          children: [
            MoneyButtomSendRequest(),
            PaidAndScaanItems(),
            Padding(
              padding: EdgeInsets.all(18.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your wallet",
                    style: TextStyles.font18blackmedium,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Manage ', style: TextStyles.font12blackbold),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                ],
              ),
            ),
            AddFundsImage(),
            Divider(
              height: 20.h,
              endIndent: 20.w,
              indent: 20.w,
            ),
            Padding(
              padding: EdgeInsets.all(28.0.w),
              child: Text.rich(
                TextSpan(
                  text: 'Pay',
                  style: TextStyles.font18blackbold,
                  children: [
                    TextSpan(
                        text: '  Team and conditions',
                        style: TextStyles.font20whaiteBold),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
