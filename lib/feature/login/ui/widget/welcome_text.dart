
import 'package:ar/core/theaming/styles.dart';
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        alignment: Alignment.center,
        child: Text("Welcome To You ", style: TextStyles.font30darkBlueBold),
      ),
    );
  }
}
