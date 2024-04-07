import 'package:flutter/material.dart';
import 'package:tangen_flutter/features/dashboard/widgets/organize_tokens.dart';
import 'package:tangen_flutter/features/dashboard/widgets/wallet_coins.dart';
import 'package:tangen_flutter/features/dashboard/widgets/wallet_info.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 8),
        child: Column(
          children: [
            WalletInfo(),
            SizedBox(height: 16),
            WalletCoins(),
            OrganizeTokens(),
          ],
        ),
      ),
    );
  }
}
