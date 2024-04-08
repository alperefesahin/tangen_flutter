import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:tangen_flutter/core/design_system/colors/colors.dart';
import 'package:tangen_flutter/core/design_system/components/tangen_text.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Icon(
          LucideIcons.walletCards,
          size: 100,
        ),
        SizedBox(height: 32),
        TangenText(
          text: 'Welcome back!',
          textStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: black),
        ),
        SizedBox(height: 8),
        TangenText(
          text: 'Use Face ID or scan a card to access the app',
          textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: greyText),
        ),
      ],
    );
  }
}
