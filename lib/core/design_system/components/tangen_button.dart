import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tangen_flutter/core/design_system/colors/colors.dart';
import 'package:tangen_flutter/core/design_system/components/tangen_text.dart';

class TangenButton extends StatelessWidget {
  const TangenButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = black,
    this.padding = EdgeInsets.zero,
    this.textColor = black,
    this.hasButtonIcon = false,
    this.isIconAtRight = true,
    this.minimumSize = const Size.fromHeight(44),
    this.icon,
    this.iconColor,
  });

  final EdgeInsets padding;
  final String text;
  final Color textColor;
  final Color? iconColor;
  final Color backgroundColor;
  final bool hasButtonIcon;
  final bool isIconAtRight;
  final IconData? icon;
  final Function() onPressed;
  final Size minimumSize;

  @override
  Widget build(BuildContext context) {
    final buttonTextStlye = GoogleFonts.openSans(
      textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: textColor),
    );

    return Padding(
      padding: padding,
      child: FilledButton(
        style: OutlinedButton.styleFrom(
          minimumSize: minimumSize,
          backgroundColor: backgroundColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          alignment: Alignment.center,
        ),
        onPressed: onPressed,
        child: hasButtonIcon
            ? isIconAtRight
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TangenText(text: text, textStyle: buttonTextStlye),
                      const SizedBox(width: 8),
                      Icon(icon, size: 18, color: iconColor),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(icon, size: 18, color: iconColor),
                      const SizedBox(width: 8),
                      TangenText(text: text, textStyle: buttonTextStlye),
                    ],
                  )
            : TangenText(text: text, textStyle: buttonTextStlye),
      ),
    );
  }
}
