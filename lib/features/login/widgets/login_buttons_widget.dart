import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:tangen_flutter/core/design_system/colors/colors.dart';
import 'package:tangen_flutter/core/design_system/components/button/tangen_button.dart';

class LoginButtonsWidget extends StatelessWidget {
  const LoginButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 42),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: TangenButton(
              backgroundColor: buttonBgGrey,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              text: "Log in with Face ID",
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: TangenButton(
              hasButtonIcon: true,
              icon: LucideIcons.walletCards,
              textColor: scaffoldBg,
              padding: EdgeInsets.symmetric(horizontal: 16),
              text: "Scan card",
            ),
          ),
        ],
      ),
    );
  }
}
