import 'package:flutter/material.dart';
import 'package:tangen_flutter/core/design_system/components/button/tangen_button.dart';
import 'package:tangen_flutter/core/design_system/components/scaffold/tangen_scaffold.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return TangenScaffold(
      body: Center(
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              child: TangenButton(),
            ),
            TangenButton(),
          ],
        ),
      ),
    );
  }
}
