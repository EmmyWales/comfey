import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/view/payment/deposit_account.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BaseText(
              text: "Payment method",
              fontSize: 18,
              color: AppColor.txtblack,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(
              height: 10,
            ),
            BaseText(
              text: "Set up account for important transaction",
              fontSize: 14,
              color: AppColor.conblck,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 0.1,
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const DepositAccount(),
                  ),
                );
              },
              child: Container(
                height: 70,
                width: MediaQuery.sizeOf(context).width,
                color: const Color(0XFFF4F2F2),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          BaseText(
                            text: "Set up deposit wallet",
                            fontSize: 16,
                            color: AppColor.black,
                            fontWeight: FontWeight.w500,
                          ),
                          BaseText(
                            text: "Create a wallet account",
                            fontSize: 14,
                            color: AppColor.grey2,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      Container(
                        child: Center(
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: AppColor.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              width: MediaQuery.sizeOf(context).width,
              color: const Color(0XFFF4F2F2),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BaseText(
                          text: "Set up withdrawal account",
                          fontSize: 16,
                          color: AppColor.black,
                          fontWeight: FontWeight.w500,
                        ),
                        BaseText(
                          text: "Create a wallet account",
                          fontSize: 14,
                          color: AppColor.grey2,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    Container(
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: AppColor.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
 
  }
}
