import 'package:comfey/utils/appcolor.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Socials extends StatelessWidget {
  String image;
  Socials({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
        border:Border.all(color: AppColor.subtxt),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Image.asset("assets/$image.png"),
      ),
    );
  }
}
