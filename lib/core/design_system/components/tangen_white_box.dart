import 'package:flutter/material.dart';
import 'package:tangen_flutter/core/design_system/colors/colors.dart';

class TangenWhiteBox extends StatelessWidget {
  const TangenWhiteBox({super.key, this.height, required this.widget});

  final double? height;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      height: height,
      decoration: const BoxDecoration(
        color: white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: widget,
    );
  }
}
