import 'package:comfey/model/homemodel.dart';
import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:comfey/widgets/contract_Dialogue/dialogue.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OldPaymentDocument extends StatefulWidget {
  const OldPaymentDocument({super.key});

  @override
  State<OldPaymentDocument> createState() => _OldPaymentDocumentState();
}

class _OldPaymentDocumentState extends State<OldPaymentDocument> {
  void _showCustomDialogue(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          child: const ContractDialogue(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BaseText(
              text: "Access old documents",
              fontSize: 18,
              color: AppColor.txtblack,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BaseText(
                  text: "Set up account for important transaction",
                  fontSize: 14,
                  color: AppColor.grey2,
                  fontWeight: FontWeight.w400,
                ),
                Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0XFF3C3C3C),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BaseText(
                          text: "All",
                          fontSize: 14,
                          color: AppColor.white,
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: AppColor.primary,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const ClampingScrollPhysics(),
                  itemCount: expensiveAccomodation.length,
                  itemBuilder: ((context, index) {
                    final expensiveAccomodations = expensiveAccomodation[index];
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                           _showCustomDialogue(context);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            height: 120,
                            width: MediaQuery.sizeOf(context).width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: AppColor.conblck,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      BaseText(
                                        text: expensiveAccomodations.name,
                                        fontSize: 18,
                                        color: AppColor.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      BaseText(
                                        text:
                                            "\$${expensiveAccomodations.price.toString()}.00",
                                        fontSize: 18,
                                        color: AppColor.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      BaseText(
                                          text: "Booked | 15th September 2023",
                                          fontSize: 12,
                                          color: AppColor.white),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.task_alt_rounded,
                                            color: Color(0XFF969696),
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
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  })),
            ),
          ],
        ),
      ),
    );
  }
}
