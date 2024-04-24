import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:comfey/widgets/custom_button/long_button.dart';
import 'package:comfey/widgets/textFormField.dart';
import 'package:comfey/widgets/textformfield%20widget/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.only(right: 10),
                height: 130,
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
                            fontSize: 18,
                            color: AppColor.white,
                            fontWeight: FontWeight.w600,
                          ),
                          BaseText(
                            text: "\$300,000.00",
                            fontSize: 18,
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
                          BaseText(
                              text: "Preview Booking",
                              fontSize: 11,
                              color: AppColor.primary),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const BaseText(
                text: "Promo Code",
                fontSize: 18,
                color: const Color(0XFF483C32),
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 10),
              const CustomTextFormField(
                hintText: "Promo code",
                borderColor: Color(0XFF969696),
              ),
              const SizedBox(height: 10),
              const BaseText(
                text: "Payment Method",
                fontSize: 18,
                color: const Color(0XFF483C32),
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 10),
              Container(
                height: 200,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.grey2,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 65,
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: AppColor.primary,
                          ),
                          color: const Color(0XFFFAFAFA),
                        ),
                        child: Center(
                          child: ListTile(
                            leading: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.credit_card,
                                  size: 28,
                                ),
                              ],
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BaseText(
                                  text: "300,000.00",
                                  fontSize: 14,
                                  color: AppColor.txtblack,
                                  fontWeight: FontWeight.w600,
                                ),
                                BaseText(
                                    text: "Wallet",
                                    fontSize: 14,
                                    color: AppColor.txt),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 65,
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0XFFFAFAFA),
                        ),
                        child: Center(
                          child: ListTile(
                            leading: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.credit_card,
                                  size: 28,
                                ),
                              ],
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BaseText(
                                  text: "Pay online",
                                  fontSize: 14,
                                  color: AppColor.txtblack,
                                  fontWeight: FontWeight.w600,
                                ),
                                BaseText(
                                    text: "Transfer, Card",
                                    fontSize: 14,
                                    color: AppColor.txt),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const BaseText(
                text: "Payment details",
                fontSize: 18,
                color: const Color(0XFF483C32),
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 10),
              Container(
                height: 200,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.grey2,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BaseText(
                            text: "Subtotal",
                            fontSize: 16,
                            color: Color(0XFF483C32),
                          ),
                          BaseText(
                            text: "\$18,900.00",
                            fontSize: 16,
                            color: Color(0XFF483C32),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BaseText(
                            text: "Discount",
                            fontSize: 16,
                            color: Color(0XFF483C32),
                          ),
                          BaseText(
                            text: "\$18,900.00",
                            fontSize: 16,
                            color: Color(0XFF483C32),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BaseText(
                            text: "Security",
                            fontSize: 16,
                            color: Color(0XFF483C32),
                          ),
                          BaseText(
                            text: "\$18,900.00",
                            fontSize: 16,
                            color: Color(0XFF483C32),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BaseText(
                            text: "Total",
                            fontSize: 16,
                            color: Color(0XFF483C32),
                          ),
                          BaseText(
                            text: "\$18,900.00",
                            fontSize: 16,
                            color: Color(0XFF483C32),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: LongButton(
                  text: "Make payment",
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
