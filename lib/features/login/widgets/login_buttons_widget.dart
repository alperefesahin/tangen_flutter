import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:tangen_flutter/core/constants/enums.dart';
import 'package:tangen_flutter/core/design_system/colors/colors.dart';
import 'package:tangen_flutter/core/design_system/components/tangen_button.dart';

class LoginButtonsWidget extends StatelessWidget {
  const LoginButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 42),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: TangenButton(
              onPressed: () {
                // Todo: implement login with face id
                context.go(RouterEnums.dashboard.routeName);
              },
              backgroundColor: buttonBgGrey,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              text: "Log in with Face ID",
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: TangenButton(
              onPressed: () {
                // Todo: implement scan card NFT
              },
              hasButtonIcon: true,
              icon: LucideIcons.walletCards,
              textColor: scaffoldBg,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              text: "Scan card",
            ),
          ),
        ],
      ),
    );
  }
}
