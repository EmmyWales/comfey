import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/view/payment/checkout.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MakePayment extends StatelessWidget {
  const MakePayment({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 5,
                  ),
                  Center(
                    child: SizedBox(
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
                ],
              ),
            ),
            TabBar(
              labelStyle: GoogleFonts.poppins(
                  color: const Color(0XFF483C32),
                  fontWeight: FontWeight.w400,
                  fontSize: 18),
              tabs: const [
                Tab(
                  text: "Checkout",
                ),
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  CheckoutScreen(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
