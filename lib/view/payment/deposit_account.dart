import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/view/payment/payment_method.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:comfey/widgets/custom_button/long_button.dart';
import 'package:comfey/widgets/textFormField.dart';
import 'package:comfey/widgets/textformfield%20widget/textformfield.dart';
import 'package:flutter/material.dart';

class DepositAccount extends StatefulWidget {
  const DepositAccount({super.key});

  @override
  State<DepositAccount> createState() => _DepositAccountState();
}

class _DepositAccountState extends State<DepositAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BaseText(
              text: "Deposit account",
              fontSize: 18,
              color: AppColor.txtblack,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(
              height: 10,
            ),
            BaseText(
              text: "Input card details to make quick deposit",
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
              height: 10,
            ),
            BaseText(
              text: "Name on account",
              fontSize: 16,
              color: AppColor.grey2,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              borderColor: AppColor.black,
              hintText: "James Margin",
              hintColor: AppColor.grey2,
            ),
            const SizedBox(
              height: 10,
            ),
            BaseText(
              text: "Card Number",
              fontSize: 16,
              color: AppColor.grey2,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              borderColor: AppColor.black,
              hintText: "0000 0000 0000 0000",
              hintColor: AppColor.grey2,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BaseText(
                      text: "Expiry",
                      fontSize: 16,
                      color: AppColor.grey2,
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      width: 80,
                      borderColor: AppColor.black,
                      hintText: "11/24",
                      hintColor: AppColor.grey2,
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BaseText(
                      text: "CVV",
                      fontSize: 16,
                      color: AppColor.grey2,
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      width: 80,
                      borderColor: AppColor.black,
                      hintText: "123",
                      hintColor: AppColor.grey2,
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
                child: LongButton(
                    text: "Update",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const PaymentMethod(),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
