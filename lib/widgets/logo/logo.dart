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
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: AppColor.white,
              shape: BoxShape.circle,
              border: Border.all(color: AppColor.primary, width: 2.5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Image.asset(
                  "assets/tour_icon.png",
                  fit: BoxFit.fill,
                ),
              ),
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
