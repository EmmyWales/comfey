import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:comfey/widgets/contract_Dialogue/sucessful_dialogue.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContractDialogue extends StatelessWidget {
  void _showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          child: const SucessfulDialogue(),
        );
      },
    );
  }

  const ContractDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: AppColor.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
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
                      text: "Accomodation Contract | DOC",
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
              margin: const EdgeInsets.only(right: 10),
              height: 100,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColor.conblck,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BaseText(
                          text: "Mathew Hostel",
                          fontSize: 16,
                          color: AppColor.white,
                          fontWeight: FontWeight.w600,
                        ),
                        BaseText(
                          text: "\$200,000.00",
                          fontSize: 16,
                          color: AppColor.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BaseText(
                            text: "Booked | 15th September 2023",
                            fontSize: 11,
                            color: AppColor.white),
                        Row(
                          children: [
                            Icon(
                              Icons.task_alt_rounded,
                              color: Color(0XFF969696),
                              size: 18,
                            ),
                            BaseText(
                                text: "Paid",
                                fontSize: 12,
                                color: AppColor.primary),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                _showCustomDialog(context);
              },
              child: Container(
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
                    leading: Icon(Icons.calendar_today_outlined),
                    title: BaseText(
                        text: "Download document",
                        fontSize: 13,
                        color: AppColor.txt),
                  ),
                ),
              ),
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
                  leading: Icon(Icons.calendar_today_outlined),
                  title: BaseText(
                      text: "Viewed hostel Clearance | Mail",
                      fontSize: 13,
                      color: AppColor.txt),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
