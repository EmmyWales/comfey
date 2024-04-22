import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/view/discovery/classic.dart';
import 'package:comfey/view/discovery/premium.dart';
import 'package:comfey/view/discovery/regular.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscoveryScreen extends StatefulWidget {
  const DiscoveryScreen({super.key});

  @override
  State<DiscoveryScreen> createState() => _DiscoveryScreenState();
}

class _DiscoveryScreenState extends State<DiscoveryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
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
              Container(
                height: 48,
                child: TabBar(
                  labelStyle: GoogleFonts.poppins(
                      color: Color(0XFF483C32),
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                  tabs: const [
                    Tab(
                      text: "Regular",
                    ),
                    Tab(
                      text: "Classic",
                    ),
                    Tab(
                      text: "Premium",
                    )
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    RegularScreen(),
                    ClassicScreen(),
                    PremiumScreen(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
