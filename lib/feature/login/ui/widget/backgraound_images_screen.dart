import 'package:flutter/material.dart';

class BackgraoundImagesScreen extends StatelessWidget {
  const BackgraoundImagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        'assets/image/login.jpeg',
        fit: BoxFit.cover,
      ),
    );
  }
}
