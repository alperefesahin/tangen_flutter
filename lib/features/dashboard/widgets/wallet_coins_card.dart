import 'package:flutter/material.dart';
import 'package:tangen_flutter/core/design_system/components/tangen_white_box.dart';
import 'package:tangen_flutter/features/dashboard/widgets/wallet_coins_widget.dart';

class WalletCoinsCard extends StatelessWidget {
  const WalletCoinsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return TangenWhiteBox(
      widget: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 20,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return const WalletCoinsWidget();
        },
      ),
    );
  }
}
