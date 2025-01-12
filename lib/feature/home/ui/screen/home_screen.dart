import 'package:ar/core/helpers/spacing.dart';
import 'package:ar/core/theaming/colors.dart';
import 'package:ar/core/theaming/styles.dart';
import 'package:ar/feature/home/data/home_choise_item_model.dart';
import 'package:ar/feature/home/ui/widget/appbare/appbare.dart';
import 'package:ar/feature/home/ui/widget/body/homescreen_choise_item.dart';
import 'package:ar/feature/home/ui/widget/body/locate_on_map.dart';
import 'package:ar/feature/home/ui/widget/body/more_icon_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppbareWidget(),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            LocateOnMap(),
            verticalSpace(16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HomeScreenChoiseItem(
                    homeChoiseItemModel: HomeChoiseItemModel(
                        circleAvatarBackgroundColor: ColorsManager.orange,
                        itemColor: ColorsManager.lightorange,
                        icon: Icons.account_balance_wallet,
                        label: 'Request Money'),
                  ),
                  HomeScreenChoiseItem(
                    homeChoiseItemModel: HomeChoiseItemModel(
                        circleAvatarBackgroundColor: ColorsManager.orange,
                        itemColor: ColorsManager.lightorange,
                        icon: Icons.attach_money,
                        label: 'Pay Someone'),
                  ),
                  HomeScreenChoiseItem(
                    homeChoiseItemModel: HomeChoiseItemModel(
                        circleAvatarBackgroundColor: ColorsManager.orange,
                        itemColor: ColorsManager.lightorange,
                        icon: Icons.directions_car,
                        label: 'Transport'),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(
                  right: 16.w, bottom: 16.h, top: 14.h, left: 16.w),
              child: Text(
                'Get more with AR',
                style: TextStyles.font22blackmedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0.w),
              child: SizedBox(
                height: 500.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MoreIconHomeScreen(
                          itemText: 'Send or get \n credit instantly',
                          itemImage: 'assets/image/homeitemimage1.jpeg',
                        ),
                        verticalSpace(10),
                        MoreIconHomeScreen(
                          itemText: 'Send or get \n credit instantly',
                          itemImage: 'assets/image/homeitemimage3.jpeg',
                        ),
                      ],
                    ),
                    horizontalSpace(10),
                    Column(
                      children: [
                        MoreIconHomeScreen(
                          itemText: 'Have a nice trip',
                          itemImage: 'assets/image/homeitemimage2.jpeg',
                        ),
                        verticalSpace(10),
                        MoreIconHomeScreen(
                          itemText: 'Here is your comfort',
                          itemImage: 'assets/image/homeitemimage4.jpeg',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
