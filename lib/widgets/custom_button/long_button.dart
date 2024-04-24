import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LongButton extends StatelessWidget {
  final String text;
  static const double buttonWidth = 360.0;
  final Color? textColor;
  final double? fontSize;
  final Color? bgColor;
  final VoidCallback onPressed;
  final BorderSide? borderSide;
  final Color? primary;
  final CircularProgressIndicator? child;

  LongButton({
    required this.text,
    this.fontSize,
    this.child,
    this.bgColor,
    this.textColor,
    this.borderSide,
    required this.onPressed,
    this.primary,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          side: borderSide,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          backgroundColor: bgColor ?? AppColor.primary,
          minimumSize: const Size(buttonWidth, 55),
        ),
        child: BaseText(
          text: text,
          fontSize: fontSize ?? 18,
          color: textColor ?? AppColor.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
