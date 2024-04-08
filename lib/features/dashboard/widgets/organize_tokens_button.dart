import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:tangen_flutter/core/design_system/colors/colors.dart';
import 'package:tangen_flutter/core/design_system/components/tangen_button.dart';

class OrganizeTokensButton extends StatelessWidget {
  const OrganizeTokensButton({super.key});

  @override
  Widget build(BuildContext context) {
    const minimumSize = Size.fromHeight(36);

    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 68),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 1.8,
        child: TangenButton(
          onPressed: () {
            // Todo: implement organize tokens
          },
          minimumSize: minimumSize,
          backgroundColor: buttonBgGrey,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
