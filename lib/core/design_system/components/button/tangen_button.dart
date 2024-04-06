import 'package:flutter/material.dart';
import 'package:tangen_flutter/core/design_system/colors/colors.dart';

class TangenButton extends StatelessWidget {
  const TangenButton({
    super.key,
    this.backgroundColor = black,
    this.isContentWrapped = false,
  });

  final Color backgroundColor;
  final bool isContentWrapped;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(36))),
          alignment: Alignment.center),
      onPressed: () {},
      child: const Text('Tangen Button'),
    );
  }
}
