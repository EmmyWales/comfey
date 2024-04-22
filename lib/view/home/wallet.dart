import 'package:comfey/data/wallet%20data/recent_transaction.dart';
import 'package:comfey/widgets/contract_Dialogue/dialogue.dart';
import 'package:comfey/widgets/creditcard_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../utils/appcolor.dart';
import '../../widgets/Text widgets/basetext.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
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
          child: const ContractDialogue(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: Container(
                    height: 40,
                    width: 220,
                    child: Center(
                      child: Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: const BoxDecoration(
                              color: Color(0XFFD28E50),
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.location_on_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          BaseText(
                            text: "Isolington, No 13 Lagos",
                            fontSize: 13,
                            color: AppColor.conblck,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 70,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BaseText(
                                    text: "Hi, Femi",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.conblck),
                                BaseText(
                                    text: "Comfey Wallet",
                                    fontSize: 12,
                                    color: AppColor.conblck),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: AppColor.primary,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.notifications,
                              color: AppColor.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CreditCard(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: AppColor.conblck,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                  height: 40,
                                  width: 40,
                                  "assets/arrowDown.png"),
                            ),
                            BaseText(
                              text: "Deposit",
                              fontSize: 13,
                              color: AppColor.conblck,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: AppColor.conblck,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                                height: 40, width: 40, "assets/arrowUp.png"),
                          ),
                          BaseText(
                            text: "Withdraw",
                            fontSize: 13,
                            color: AppColor.conblck,
                          ),
                        ]),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    _showCustomDialog(context);
                  },
                  child: Container(
                    height: 90,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      color: AppColor.conblck,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BaseText(
                                text: "Accommodation contract.",
                                fontSize: 16,
                                color: AppColor.white,
                                fontWeight: FontWeight.w600,
                              ),
                              BaseText(
                                text:
                                    "Document includes the payment agreement\nbetween from january to May",
                                fontSize: 11,
                                color: AppColor.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset("assets/files.png"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BaseText(
                      text: "Recent Transaction",
                      fontSize: 18,
                      color: AppColor.txtblack,
                      fontWeight: FontWeight.w500,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: BaseText(
                        text: "See all",
                        fontSize: 16,
                        color: AppColor.primary,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.sizeOf(context).height / 4.09,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    physics: const ClampingScrollPhysics(),
                    itemCount: transaction.length,
                    itemBuilder: ((context, index) {
                      final transactions = transaction[index];
                      return Column(
                        children: [
                          ListTile(
                            leading: Image.asset("assets/home.png"),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BaseText(
                                  text: transactions.title,
                                  fontSize: 18,
                                  color: AppColor.conblck,
                                  fontWeight: FontWeight.w600,
                                ),
                                BaseText(
                                  text: transactions.description,
                                  fontSize: 11,
                                  color: AppColor.conblck,
                                  fontWeight: FontWeight.w400,
                                ),
                                BaseText(
                                  text: transactions.date,
                                  fontSize: 14,
                                  color: AppColor.conblck,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                            trailing: BaseText(
                              text: "\$${transactions.price.toString()}",
                              fontSize: 16,
                              color: AppColor.conblck,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
