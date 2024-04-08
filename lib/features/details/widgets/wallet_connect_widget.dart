import 'package:flutter/material.dart';
import 'package:tangen_flutter/core/design_system/colors/colors.dart';
import 'package:tangen_flutter/core/design_system/components/tangen_text.dart';
import 'package:tangen_flutter/core/design_system/components/tangen_white_box.dart';

class WalletConnectWidget extends StatelessWidget {
  const WalletConnectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TangenWhiteBox(
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16), // Image border
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(24), // Image radius
                    child: Image.asset("assets/wallet_connect.jpg", fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TangenText(
                        text: "WalletConnect", textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                    TangenText(
                      text: "Connect to Dapps",
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: greyText.withOpacity(0.75),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(Icons.arrow_forward_ios_rounded, size: 14, color: greyText.withOpacity(0.75)),
          ),
        ],
      ),
    );
  }
}
