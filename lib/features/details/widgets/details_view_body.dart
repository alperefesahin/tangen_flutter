import 'package:flutter/material.dart';
import 'package:tangen_flutter/core/design_system/colors/colors.dart';
import 'package:tangen_flutter/core/design_system/components/tangen_text.dart';
import 'package:tangen_flutter/features/details/widgets/details_button_row_widget.dart';
import 'package:tangen_flutter/features/details/widgets/wallet_connect_widget.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          children: [
            const WalletConnectWidget(),
            const SizedBox(height: 24),
            const DetailsButtonRowWidget(text: "Add new wallet", isThereMoreThanOneWidget: false),
            const SizedBox(height: 24),
            const DetailsButtonRowWidget(
              isThereMoreThanOneWidget: true,
              textList: ["Card Settings", "App Settings"],
            ),
            const SizedBox(height: 24),
            const DetailsButtonRowWidget(
              isThereMoreThanOneWidget: true,
              textList: ["Chat", "Referral program", "Send Feedback"],
            ),
            const SizedBox(height: 24),
            const DetailsButtonRowWidget(text: "Terms of Service", isThereMoreThanOneWidget: false),
            const SizedBox(height: 36),
            const TangenText(
              text: "Unofficial Tangem Lite",
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            TangenText(
              text: "Tangen 5.7.3 (816)",
              textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: greyText.withOpacity(0.75)),
            ),
            const SizedBox(height: 72),
          ],
        ),
      ),
    );
  }
}
