import 'package:comfey/utils/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color color;
  final TextAlign? textAlign;
  final bool? underlineText;
  const BaseText({
    required this.text,
    required this.fontSize,
    this.underlineText,
    this.fontWeight,
    required this.color,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.w500,
        decoration: underlineText != null && underlineText!
            ? TextDecoration.underline
            : null,
      ),
    );
  }
}
