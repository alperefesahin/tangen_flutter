import 'package:flutter/material.dart';
import 'package:tangen_flutter/core/design_system/colors/colors.dart';

class TangenScaffold extends StatelessWidget {
  const TangenScaffold({super.key, this.appBar, required this.body});

  final PreferredSizeWidget? appBar;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      top: false,
      child: Scaffold(
        backgroundColor: scaffoldBg,
        appBar: appBar,
        body: body,
      ),
    );
  }
}
