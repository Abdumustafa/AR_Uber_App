import 'package:ar/feature/home/data/home_choise_item_model.dart';
import 'package:ar/feature/home/ui/widget/appbare/appbare.dart';
import 'package:ar/feature/home/ui/widget/body/homescreen_choise_item.dart';
import 'package:ar/feature/home/ui/widget/body/locate_on_map.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppbareWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LocateOnMap(),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HomeScreenChoiseItem(
                    homeChoiseItemModel: HomeChoiseItemModel(
                        icon: Icons.account_balance_wallet,
                        label: 'Request Money'),
                  ),
                  HomeScreenChoiseItem(
                    homeChoiseItemModel: HomeChoiseItemModel(
                        icon: Icons.attach_money, label: 'Pay Someone'),
                  ),
                  HomeScreenChoiseItem(
                    homeChoiseItemModel: HomeChoiseItemModel(
                        icon: Icons.directions_car, label: 'Transport'),
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
