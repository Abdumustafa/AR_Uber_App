import 'package:ar/feature/home/ui/widget/appbare/appbare_text_title.dart';
import 'package:ar/feature/home/ui/widget/appbare/leading_icon.dart';
import 'package:ar/feature/home/ui/widget/appbare_actions_icon.dart';
import 'package:flutter/material.dart';

class AppbareWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbareWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: LeadingIcon(),
      title: AppbareTextTitle(),
      actions: [
        AppbareActionsIcon(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
