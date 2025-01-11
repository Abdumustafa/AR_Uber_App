import 'package:ar/core/helpers/extenstions.dart';
import 'package:ar/core/helpers/spacing.dart';
import 'package:ar/core/routing/routes.dart';
import 'package:ar/core/theaming/colors.dart';
import 'package:ar/core/theaming/styles.dart';
import 'package:ar/core/widget/buttom_app.dart';
import 'package:ar/feature/login/data/model/outbuttom_model.dart';
import 'package:ar/feature/login/ui/widget/welcome_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBare extends StatelessWidget {
  const BottomBare({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.h,
      left: 0.w,
      right: 0.w,
      child: Container(
        height: 250.h,
        decoration: BoxDecoration(
          color: ColorsManager.moreLightGray,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.r),
            topRight: Radius.circular(50.r),
          ),
        ),
        child: ListView(
          children: [
            WelcomeText(),
            verticalSpace(10),
            Padding(
              padding: EdgeInsets.all(8.0.r),
              child: AppTextButton(
                model: AppTextButtonModel(
                  icon: FontAwesomeIcons.google,
                  iconColor: ColorsManager.darkred,
                  iconSize: 20,
                  buttonText: 'Continue using Google ',
                  textStyle: TextStyles.font24BlackBold,
                  onPressed: () {
                    context.pop();

                    context.pushName(Routes.homeScreen);
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0.r),
              child: AppTextButton(
                model: AppTextButtonModel(
                  buttonText: 'Continue using number',
                  textStyle: TextStyles.font24BlackBold,
                  onPressed: () {
                    context.pop();
                    context.pushName(Routes.homeScreen);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
