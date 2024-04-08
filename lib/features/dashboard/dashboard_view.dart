import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:tangen_flutter/core/constants/enums.dart';
import 'package:tangen_flutter/core/design_system/colors/colors.dart';
import 'package:tangen_flutter/core/design_system/components/tangen_scaffold.dart';
import 'package:tangen_flutter/core/design_system/components/tangen_text.dart';
import 'package:tangen_flutter/features/dashboard/widgets/dashboard_view_body.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  bool _isScrolledToTop = true;

  @override
  Widget build(BuildContext context) {
    return TangenScaffold(
      appBar: AppBar(
        toolbarHeight: 45,
        backgroundColor: transparent,
        scrolledUnderElevation: _isScrolledToTop ? 0 : 0.2,
        elevation: _isScrolledToTop ? 0 : 0.2,
        shape: Border(
          bottom: BorderSide(
            color: _isScrolledToTop ? transparent : black,
            width: _isScrolledToTop ? 0 : 0.1,
          ),
        ),
        title: const Row(
          children: [
            Icon(LucideIcons.walletCards, size: 20),
            SizedBox(width: 4),
            TangenText(
              text: 'tangen',
              textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: black),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              // open details page
              context.push(RouterEnums.details.routeName);
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification is ScrollUpdateNotification) {
            setState(() {
              _isScrolledToTop = notification.metrics.pixels == 0 || notification.metrics.pixels < 0;
            });
          }
          return true;
        },
        child: const DashboardViewBody(),
      ),
    );
  }
}
