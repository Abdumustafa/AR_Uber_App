import 'package:ar/core/theaming/colors.dart';
import 'package:ar/core/theaming/font_weight_helper.dart';
import 'package:ar/core/theaming/styles.dart';
import 'package:ar/core/widget/app_elevatebuttom/elevate_buttom_app.dart';
import 'package:ar/core/widget/app_item_image/app_item_image.dart';
import 'package:ar/core/widget/app_item_image/app_item_image_model.dart';
import 'package:ar/core/widget/app_outlinebuttom/outline_buttom_model.dart';
import 'package:flutter/material.dart';

class AddFundsImage extends StatelessWidget {
  const AddFundsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(18.0),
              child: SizedBox(
                height: 170,
                width: double.infinity,
                child: Stack(
                  children: [
                    AppItemImage(
                      appItemImage: AppItemImageModel(
                        itemHight: 170,
                        itemwidth: double.infinity,
                        itemImage: "assets/image/item.jpeg",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text.rich(
                        TextSpan(
                          text: 'EGP',
                          style: TextStyle(
                              fontSize: 30,
                              color: ColorsManager.whaite,
                              fontWeight: FontWeightHelper.bold),
                          children: [
                            TextSpan(
                                text: ' 0', style: TextStyles.font30whaiteBold),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: AppTextElevatedButton(
                            model: AppTextButtonModel(
                                buttonHeight: 30,
                                buttonText: 'Add funds',
                                textStyle: TextStyles.font12blackbold,
                                onPressed: () {}),
                          ),
                        ))
                  ],
                ),
              ),
            );
  }
}