import 'package:flutter/material.dart';
import 'package:tangen_flutter/core/design_system/components/tangen_white_box.dart';

class WalletCoins extends StatelessWidget {
  const WalletCoins({super.key});

  @override
  Widget build(BuildContext context) {
    return TangenWhiteBox(
      widget: ListView.builder(
        itemCount: 20,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
          );
        },
      ),
    );
  }
}
