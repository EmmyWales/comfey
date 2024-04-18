import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 7.5,
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: AppColor.white,
              shape: BoxShape.circle,
              border: Border.all(color: AppColor.primary, width: 2.5),
            ),
            child: Center(
              child: Image.asset(height: 50, width: 40, "assets/Bed.png"),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          BaseText(
            text: "Comfey",
            fontSize: 22,
            color: AppColor.primary,
            fontWeight: FontWeight.w700,
          )
        ]);
  }
}
