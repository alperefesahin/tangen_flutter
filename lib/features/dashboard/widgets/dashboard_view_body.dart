import 'package:flutter/material.dart';
import 'package:tangen_flutter/features/dashboard/widgets/manage_tokens_button.dart';
import 'package:tangen_flutter/features/dashboard/widgets/organize_tokens_button.dart';
import 'package:tangen_flutter/features/dashboard/widgets/wallet_coins_card.dart';
import 'package:tangen_flutter/features/dashboard/widgets/wallet_info_card.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 8),
            child: Column(
              children: [
                WalletInfoCard(),
                SizedBox(height: 16),
                WalletCoinsCard(),
                OrganizeTokensButton(),
              ],
            ),
          ),
        ),
        ManageTokensButton(),
      ],
    );
  }
}
