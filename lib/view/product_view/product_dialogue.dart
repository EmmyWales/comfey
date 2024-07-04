import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductDialogue extends StatelessWidget {
  ProductDialogue({super.key});
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColor.conblck,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 const Icon(Icons.calendar_today_outlined, size: 21,),

                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BaseText(
                          text: "Room number",
                          fontSize: 11,
                          color: AppColor.txt),
                      BaseText(
                        text: "Room ${counter()}",
                        fontSize: 11,
                        color: AppColor.txtblack,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                
              ],
            ),
          );
  }

  String counter() {
    // Incrementing i and returning it as a string
    i++;
    return i.toString();
  }
}
