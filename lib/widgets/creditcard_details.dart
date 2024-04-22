import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: MediaQuery.sizeOf(context).width / 1.38,
      decoration: BoxDecoration(
        color: AppColor.conblck,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/creditcard.png"),
                    BaseText(
                      text: "Total balance",
                      fontSize: 18,
                      color: AppColor.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                const Icon(Icons.visibility_off, color: Colors.white,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BaseText(
                  text: "8637 **** **** *** 6287",
                  fontSize: 16,
                  color: AppColor.white,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                BaseText(
                  text: "\$**,***.00",
                  fontSize: 18,
                  color: AppColor.white,
                  fontWeight: FontWeight.w600,
                 
                ),
              ],
            ),
            Row(
              children: [
                BaseText(
                  text: "Get at least 20 points and receive \$25",
                  fontSize: 12,
                  color: AppColor.white,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
