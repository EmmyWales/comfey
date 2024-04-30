import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:flutter/material.dart';

class ProductDialogue extends StatelessWidget {
  const ProductDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: AppColor.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 15,
                      decoration: BoxDecoration(
                        color: AppColor.primary,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const BaseText(
                      text: "Hostel Accomodation | Slot",
                      fontSize: 16,
                      color: Color(0XFF1A1D1F),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(
                      color: Color(0XFFEFEFEF),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.close_rounded,
                      size: 18,
                      color: Color(0XFF33383F),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 55,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColor.conblck,
                ),
              ),
              child: Center(
                child: ListTile(
                  leading: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.calendar_today_outlined),
                    ],
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BaseText(
                          text: "Room number",
                          fontSize: 13,
                          color: AppColor.txt),
                      BaseText(
                        text: "29, Mathew Hostel, Block 2",
                        fontSize: 13,
                        color: AppColor.txtblack,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            BaseText(
              text: "Paid Occupant",
              fontSize: 18,
              color: AppColor.conblck,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: AppColor.conblck,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: AppColor.conblck,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: AppColor.conblck,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
