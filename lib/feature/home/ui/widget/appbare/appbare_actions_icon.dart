import 'package:ar/core/helpers/extenstions.dart';
import 'package:ar/core/routing/routes.dart';
import 'package:ar/core/theaming/styles.dart';
import 'package:flutter/material.dart';

class AppbareActionsIcon extends StatelessWidget {
  const AppbareActionsIcon({super.key});
  

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          Colors.white,
        ),
        elevation: WidgetStatePropertyAll(0),
      ),
      onPressed: () {
        
context.pushName(Routes.payScreen);

      },
      child: Text(
        'Pay',
        style: TextStyles.font24BlackBold,
      ),
    );
  }
}
