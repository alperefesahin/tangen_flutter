import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:tangen_flutter/core/design_system/colors/colors.dart';
import 'package:tangen_flutter/core/design_system/components/scaffold/tangen_scaffold.dart';
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
        backgroundColor: transparent,
        scrolledUnderElevation: _isScrolledToTop ? 0 : 0.2,
        elevation: _isScrolledToTop ? 0 : 0.2,
        shape: Border(
          bottom: BorderSide(
            color: _isScrolledToTop ? transparent : black,
            width: _isScrolledToTop ? 0 : 0.1,
          ),
        ),
        title: Row(
          children: [
            const Icon(LucideIcons.walletCards),
            const SizedBox(width: 8),
            Text(
              'tangen',
              style: GoogleFonts.openSans(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: black,
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              // open details page
              // context.push(RouterEnums.details.routeName);
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification is ScrollUpdateNotification) {
            setState(() {
              _isScrolledToTop = notification.scrollDelta! < 0 && notification.metrics.pixels == 0;
            });
          }
          return true;
        },
        child: const DashboardViewBody(),
      ),
    );
  }
}
