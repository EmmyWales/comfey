import 'package:comfey/data/wallet%20data/recent_transaction.dart';
import 'package:comfey/widgets/contract_Dialogue/accomodation.dart';
import 'package:comfey/widgets/contract_Dialogue/dialogue.dart';
import 'package:comfey/widgets/creditcard_details.dart';
import 'package:comfey/widgets/custom_button/long_button.dart';
import 'package:comfey/widgets/textFormField.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
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
                        mainAxisAlignment: MainAxisAlignment.center,
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
                            text: "Ile-Ife, Osun",
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
                      //crossAxisAlignment: CrossAxisAlignment.start,
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
                  height: MediaQuery.sizeOf(context).height / 2.7,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    padding:
                        EdgeInsets.only(top: transaction.isNotEmpty ? 1 : 0),
                    physics: const ClampingScrollPhysics(),
                    itemCount: transaction.length,
                    itemBuilder: ((context, index) {
                      final transactions = transaction[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
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

  void _showMapModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.4,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.sizeOf(context).height * 0.4,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: AccomodationDialogue(),
            ),
          ),
        );
      },
    );
  }
}
