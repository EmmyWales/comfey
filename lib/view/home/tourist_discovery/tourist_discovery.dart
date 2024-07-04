import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/view/discovery/classic.dart';
import 'package:comfey/view/home/tourist_discovery/attractions.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TouristDiscovery extends StatefulWidget {
  const TouristDiscovery({super.key});

  @override
  State<TouristDiscovery> createState() => _TouristDiscoveryState();
}

class _TouristDiscoveryState extends State<TouristDiscovery> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Center(
                child: SizedBox(
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
              SizedBox(
                height: 48,
                child: TabBar(
                  labelStyle: GoogleFonts.poppins(
                      color: const Color(0XFF483C32),
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                  tabs: const [
                    Tab(
                      text: "Places",
                    ),
                    Tab(
                      text: "Accomodations",
                    ),
                  
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    Attractions(),
                    ClassicScreen(),
                    
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