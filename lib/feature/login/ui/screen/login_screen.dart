
import 'package:ar/feature/login/ui/widget/app_name_text.dart';
import 'package:ar/feature/login/ui/widget/backgraound_images_screen.dart';
import 'package:ar/feature/login/ui/widget/botton_bare.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgraoundImagesScreen(),
          AppNameText(),
          BottomBare(),
        ],
      ),
    );
  }
}
