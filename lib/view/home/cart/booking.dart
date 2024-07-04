import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/view/payment/make_payment.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:flutter/material.dart';

import '../../../model/homemodel.dart';

class BookingCart extends StatefulWidget {
  const BookingCart({super.key});

  @override
  State<BookingCart> createState() => _BookingCartState();
}

class _BookingCartState extends State<BookingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
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
                           Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => const MakePayment(),
                                      ),
                                    );
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
                                      BaseText(
                                          text: "Preview Booking",
                                          fontSize: 12,
                                          color: AppColor.primary)
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
