import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:tangen_flutter/core/design_system/colors/colors.dart';
import 'package:tangen_flutter/core/design_system/components/tangen_button.dart';

class OrganizeTokensButton extends StatelessWidget {
  const OrganizeTokensButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 72),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 1.75,
        child: TangenButton(
          onPressed: () {
            // Todo: implement organize tokens
          },
          backgroundColor: buttonBgGrey,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          text: "Organize tokens",
          hasButtonIcon: true,
          icon: LucideIcons.settings2,
          iconColor: black,
          isIconAtRight: false,
        ),
      ),
    );
  }
}
