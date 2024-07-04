import 'package:comfey/utils/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class FormField2 extends StatelessWidget {
  String text;
  Widget? iconData;
  Widget? suffixData;
  FormField2({this.iconData, this.suffixData, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.sizeOf(context).width,
      child: TextFormField(
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: text,
            prefixIcon: iconData ?? const Icon(Icons.search),
            suffix: suffixData,
            hintMaxLines: 1,
            hintStyle: GoogleFonts.poppins(color: AppColor.subtxt),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: AppColor.subtxt),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: AppColor.subtxt))),
      ),
    );
  }
}
