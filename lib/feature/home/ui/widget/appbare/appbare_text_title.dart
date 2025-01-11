import 'package:ar/core/theaming/styles.dart';
import 'package:flutter/material.dart';

class AppbareTextTitle extends StatelessWidget {
  const AppbareTextTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Uber',
        style: TextStyles.font25grayBold,
        children: [
          TextSpan(text: 'A', style: TextStyles.font25darkBlueBold),
          TextSpan(
            text: 'R',
            style: TextStyles.font25darkredBold,
          ),
        ],
      ),
    );
  }
}
