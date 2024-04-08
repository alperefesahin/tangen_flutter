import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tangen_flutter/core/design_system/colors/colors.dart';
import 'package:tangen_flutter/core/design_system/components/tangen_text.dart';
import 'package:tangen_flutter/features/dashboard/widgets/triangle_painter.dart';

class WalletCoinsWidget extends StatelessWidget {
  const WalletCoinsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 60,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 30,
                height: 30,
                child: SvgPicture.asset('assets/tangem.svg', fit: BoxFit.fill),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TangenText(
                      text: "Kaspa",
                      textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        const TangenText(
                          text: "\$0,13",
                          textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: greyText),
                        ),
                        const SizedBox(width: 8),
                        CustomPaint(
                          painter: TrianglePainter(
                            strokeColor: blue,
                            strokeWidth: 10,
                            paintingStyle: PaintingStyle.fill,
                          ),
                          child: const SizedBox(height: 7, width: 9),
                        ),
                        const SizedBox(width: 4),
                        const TangenText(
                          text: "2,7",
                          textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: blue),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TangenText(
                text: "\$14,48",
                textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              TangenText(
                text: "KAS 4,332",
                textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: greyText),
              ),
            ],
          )
        ],
      ),
    );
  }
}
