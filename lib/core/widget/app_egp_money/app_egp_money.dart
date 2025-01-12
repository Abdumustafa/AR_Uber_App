import 'package:ar/core/widget/app_egp_money/app_egp_money_model.dart';
import 'package:flutter/material.dart';

class AppEgpMoney extends StatelessWidget {
  const AppEgpMoney({super.key, required this.appEgpMoneyModel});
  final AppEgpMoneyModel appEgpMoneyModel;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: appEgpMoneyModel.firstText,
        style: appEgpMoneyModel.firstTextStyle,
        children: [
          TextSpan(text: appEgpMoneyModel.secondText, style: appEgpMoneyModel.secondTextStyle),
        ],
      ),
    );
  }
}