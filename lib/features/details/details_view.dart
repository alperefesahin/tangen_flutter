import 'package:flutter/material.dart';
import 'package:tangen_flutter/core/design_system/components/tangen_scaffold.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const TangenScaffold(
      body: Center(
        child: Text('Details View'),
      ),
    );
  }
}
