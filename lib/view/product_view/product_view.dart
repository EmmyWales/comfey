import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/view/payment/checkout.dart';
import 'package:comfey/view/payment/make_payment.dart';
import 'package:comfey/view/product_view/product_dialogue.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:comfey/widgets/contract_Dialogue/dialogue.dart';
import 'package:comfey/widgets/custom_button/long_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductView extends StatefulWidget {
  const ProductView({
    super.key,
  });

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
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
          child: const ProductDialogue(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height / 2.7,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/room.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 60,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: AppColor.white,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width / 4,
                              ),
                              BaseText(
                                text: "Accomodation",
                                fontSize: 18,
                                color: AppColor.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).width / 2.5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage("assets/con1.png"),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage("assets/con2.png"),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage("assets/con3.png"),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage("assets/con4.png"),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage("assets/con5.png"),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 20,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(90, 51, 49, 52),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: BaseText(
                                      text: "Classic",
                                      fontSize: 12,
                                      color: Color(0XFF5A3514),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                BaseText(
                                  text: "Mathew Hostel",
                                  fontSize: 20,
                                  color: AppColor.conblck,
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: AppColor.grey2),
                                    borderRadius:
                                        BorderRadiusDirectional.circular(30),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 35,
                                            width: 110.5,
                                            decoration: BoxDecoration(
                                                color: AppColor.choc,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  BaseText(
                                                    text: "Room number",
                                                    fontSize: 11,
                                                    color: AppColor.white,
                                                  ),
                                                  const SizedBox(
                                                    width: 2,
                                                  ),
                                                  Icon(
                                                    Icons.favorite,
                                                    size: 14,
                                                    color: AppColor.white,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          // Container(
                                          //   height: 35,
                                          //   width: 85,
                                          //   decoration: BoxDecoration(
                                          //       color: AppColor.choc,
                                          //       borderRadius:
                                          //           BorderRadius.circular(20)),
                                          //   child: Center(
                                          //     child: Row(
                                          //       mainAxisAlignment:
                                          //           MainAxisAlignment.center,
                                          //       children: [
                                          //         BaseText(
                                          //           text: "2 spaces left",
                                          //           fontSize: 11,
                                          //           color: AppColor.white,
                                          //         ),
                                          //       ],
                                          //     ),
                                          //   ),
                                          // ),
                                       
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: AppColor.choc,
                            ),
                            const BaseText(
                              text: "Isolington No 13 Lagos",
                              fontSize: 12,
                              color: Color(0XFF878685),
                              fontWeight: FontWeight.w500,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            BaseText(
                              text: "View on Google Map",
                              fontSize: 12,
                              color: AppColor.primary,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Divider(),
                        BaseText(
                          text: "Features",
                          fontSize: 18,
                          color: AppColor.txtblack,
                        ),
                        const BaseText(
                          text:
                              "Bellow are the list of all the feature you would see in this hostel",
                          fontSize: 12,
                          color: Color(0XFF878685),
                          fontWeight: FontWeight.w500,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: AppColor.conblck,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.bed,
                                size: 30,
                                color: AppColor.white,
                              )),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: AppColor.conblck,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.lightbulb,
                                size: 30,
                                color: AppColor.white,
                              )),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: AppColor.conblck,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.bathtub,
                                size: 30,
                                color: AppColor.white,
                              )),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: AppColor.conblck,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.chair,
                                size: 30,
                                color: AppColor.white,
                              )),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: AppColor.conblck,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.restaurant_sharp,
                                size: 30,
                                color: AppColor.white,
                              )),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Divider(),
                        const SizedBox(
                          height: 20,
                        ),
                        BaseText(
                          text: "Description",
                          fontSize: 18,
                          color: AppColor.txtblack,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        BaseText(
                          text:
                              "Matthew hostel is a 5 star hostel with constant supply of electricity and water it is also a conducive environment for learning and man other things. Matthew hostel is a hostel with 300 rooms with only 2 people in a room. It is very comforting and gives room for personal space.",
                          fontSize: 12,
                          color: AppColor.txtblack,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/map2.png"),
                          fit: BoxFit.fill),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 90,
            color: AppColor.primary, // Example color
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        BaseText(
                          text: "\$300,000.00",
                          fontSize: 20,
                          color: AppColor.txt,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 95,
                              child: LongButton(
                                  text: "Enquire",
                                  fontSize: 12,
                                  bgColor: AppColor.white,
                                  textColor: AppColor.primary,
                                  onPressed: () {
                                    _showCustomDialogue(context);
                                  }),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              width: 110,
                              child: LongButton(
                                  text: "Book Now",
                                  fontSize: 12,
                                  bgColor: AppColor.white,
                                  textColor: AppColor.primary,
                                  onPressed: () {
                                    
                                  }),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
