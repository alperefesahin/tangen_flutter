import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tangen_flutter/core/design_system/components/scaffold/tangen_scaffold.dart';
import 'package:tangen_flutter/features/login/widgets/login_buttons_widget.dart';
import 'package:tangen_flutter/features/login/widgets/welcome_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const TangenScaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 80),
            WelcomeWidget(),
            LoginButtonsWidget(),
          ],
        ),
      ),
    );
  }
}
