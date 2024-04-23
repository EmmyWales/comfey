import 'package:comfey/utils/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final double? fontSize;
  final Color? textColor;
  final Color? hintColor;
  final Color? borderColor;
  final double borderRadius;
  final void Function(String?)? onChanged;
  final double? height;
  final double? width;
  final Widget? suffixIcon;
  final Widget? preffixIcon;
final TextInputType? keyboardType;

  const CustomTextFormField(
      {this.height,
      this.width,
      this.controller,
      this.suffixIcon,
      this.hintText,
      this.keyboardType,
      this.fontSize,
      this.textColor,
      this.hintColor,
      this.borderColor,
      this.onChanged,
      this.borderRadius = 10.0,
      this.preffixIcon,
      super.key});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscure = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        border: Border.all(color: widget.borderColor ?? AppColor.primary),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: TextField(
          maxLines: 1,
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          obscureText: _obscure,
          onChanged: widget.onChanged ?? (s) {},
          style: GoogleFonts.inter(
              fontSize: widget.fontSize, color: widget.textColor),
          decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: GoogleFonts.poppins(
                color: widget.hintColor ?? AppColor.primary ,
                fontSize: 18,
              ),
              border: InputBorder.none,
              prefixIcon: widget.preffixIcon,
              suffixIcon: widget.suffixIcon != null
                  ? IconButton(
                      alignment: Alignment.bottomCenter,
                      onPressed: () {
                        setState(() {
                          _obscure = !_obscure;
                        });
                      },
                      icon: Icon(_obscure
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined),
                      iconSize: 24,
                      color: AppColor.primary,
                    )
                  : null),
        ),
      ),
    );
  }
}

