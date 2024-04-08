import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tangen_flutter/core/design_system/colors/colors.dart';
import 'package:tangen_flutter/core/design_system/components/tangen_text.dart';
import 'package:tangen_flutter/core/design_system/components/tangen_white_box.dart';

class WalletInfoCard extends StatelessWidget {
  const WalletInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return TangenWhiteBox(
      height: size.height / 7.5,
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 0, bottom: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TangenText(
                  text: "Wallet",
                  textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: greyText.withOpacity(0.75)),
                ),
                const SizedBox(height: 8),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TangenText(
                      text: "\$135,",
                      textStyle: TextStyle(fontSize: 26, fontWeight: FontWeight.w700, color: black),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: TangenText(
                        text: "30",
                        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: black),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                TangenText(
                  text: "2 cards",
                  textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: greyText.withOpacity(0.75)),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            width: size.width / 4,
            child: SvgPicture.asset('assets/tangem.svg', fit: BoxFit.fill),
          ),
        ],
      ),
    );
  }
}
