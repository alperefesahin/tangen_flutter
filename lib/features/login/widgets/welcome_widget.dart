import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:tangen_flutter/core/design_system/colors/colors.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          LucideIcons.walletCards,
          size: 100,
        ),
        const SizedBox(height: 32),
        Text(
          'Welcome back!',
          style: GoogleFonts.openSans(
            textStyle: const TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: black),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          'Use Face ID or scan a card to access the app',
          style: GoogleFonts.openSans(
            textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: greyText),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
