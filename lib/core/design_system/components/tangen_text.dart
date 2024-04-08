import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TangenText extends StatelessWidget {
  const TangenText({super.key, required this.text, required this.textStyle});

  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(textStyle: textStyle),
      textAlign: TextAlign.center,
    );
  }
}
