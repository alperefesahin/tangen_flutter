import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:tangen_flutter/core/constants/enums.dart';
import 'package:tangen_flutter/core/design_system/colors/colors.dart';
import 'package:tangen_flutter/core/design_system/components/scaffold/tangen_scaffold.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return TangenScaffold(
      appBar: AppBar(
        backgroundColor: scaffoldBg,
        scrolledUnderElevation: 2,
        elevation: 0,
        shape: Border(
            bottom: BorderSide(
              color: black,
              width: 0.1,
            )
        ),
        title: const Row(
          children: [
            Icon(LucideIcons.activity),
            SizedBox(width: 8),
            Text('dashboard'),
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
      body: ListView.builder(itemCount: 20,itemBuilder: (context, index) {
        return ListTile(
          title: Text('Item $index'),
        );
      }),
    );
  }
}
