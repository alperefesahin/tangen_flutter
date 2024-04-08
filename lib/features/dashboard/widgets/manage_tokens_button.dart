import 'package:flutter/material.dart';
import 'package:tangen_flutter/core/design_system/colors/colors.dart';
import 'package:tangen_flutter/core/design_system/components/tangen_button.dart';

class ManageTokensButton extends StatelessWidget {
  const ManageTokensButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.75),
            blurRadius: 10,
            spreadRadius: 10,
            offset: const Offset(4, 8), // Shadow position
          ),
        ],
      ),
      child: TangenButton(
        padding: const EdgeInsets.only(bottom: 20),
        text: "Manage tokens",
        onPressed: () {
          // Todo: implement manage tokens
        },
        textColor: white,
      ),
    );
  }
}
