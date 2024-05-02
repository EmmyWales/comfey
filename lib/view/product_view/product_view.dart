import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/view/payment/checkout.dart';
import 'package:comfey/view/payment/make_payment.dart';
import 'package:comfey/view/product_view/product_dialogue.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:comfey/widgets/contract_Dialogue/accomodation.dart';
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
  List<String> roomNumbers = List.generate(21, (index) => 'Room ${index + 1}');
  int i = 0;
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
                                  text: "Silver Ark",
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
                                          GestureDetector(
                                            onTap: () {
                                              _showMapModal(context);
                                            },
                                            child: Container(
                                              height: 35,
                                              width: 110.5,
                                              decoration: BoxDecoration(
                                                  color: AppColor.choc,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
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
                    decoration: const BoxDecoration(
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
                                    // _showCustomDialogue(context);
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
                                  onPressed: () {}),
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

  void _showMapModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.8,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.8,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Container(
                  height: 40,
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    color: AppColor.primary,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const BaseText(
                                  text: "Hostel Accomodation | Rooms",
                                  fontSize: 16,
                                  color: Color(0XFF1A1D1F),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                  color: Color(0XFFEFEFEF),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.close_rounded,
                                  size: 18,
                                  color: Color(0XFF33383F),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: GridView.builder(
                            physics: const ClampingScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 2.0,
                              crossAxisCount: 3,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                            ),
                            itemCount: roomNumbers.length,
                            itemBuilder: ((context, index) {
                              return GestureDetector(
                                onTap: () {
                                  _showRoomates(context);
                                },
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: AppColor.conblck,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Icon(
                                            Icons.calendar_today_outlined,
                                            size: 21,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              BaseText(
                                                  text: "Room number",
                                                  fontSize: 11,
                                                  color: AppColor.txt),
                                              BaseText(
                                                text: "Room ${counter(index)}",
                                                fontSize: 11,
                                                color: AppColor.txtblack,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        BaseText(
                          text: "Paid Occupant",
                          fontSize: 18,
                          color: AppColor.conblck,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: AppColor.conblck,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: AppColor.conblck,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: AppColor.conblck,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  String counter(int index) {
    return (index + 1).toString();
  }

  void _showRoomates(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.87,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.87,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Container(
                  height: 40,
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    color: AppColor.primary,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const BaseText(
                                  text: "Hostel Accomodation | Rooms",
                                  fontSize: 16,
                                  color: Color(0XFF1A1D1F),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                  color: Color(0XFFEFEFEF),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.close_rounded,
                                  size: 18,
                                  color: Color(0XFF33383F),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Material(
                            elevation: 2,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 60,
                              width: MediaQuery.sizeOf(context).width,
                              decoration: BoxDecoration(),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 40,
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.calendar_today_outlined,
                                      size: 21,
                                    ),
                                    title: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        BaseText(
                                          text: "Room number",
                                          fontSize: 13,
                                          color: AppColor.txtblack,
                                        ),
                                        BaseText(
                                          text: "29 Silver Ark , Block 2",
                                          fontSize: 13,
                                          color: AppColor.txtblack,
                                          fontWeight: FontWeight.w600,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: BaseText(
                            text: "Current Occupant",
                            fontSize: 16,
                            color: AppColor.conblck,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: AppColor.conblck,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: AppColor.conblck,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: AppColor.conblck,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: BaseText(
                            text: "Connect with other room mates",
                            fontSize: 14,
                            color: AppColor.conblck,
                          ),
                        ),
                        ListTile(
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: AppColor.conblck,
                              shape: BoxShape.circle,
                            ),
                          ),
                          title: BaseText(
                            text: "Becky",
                            fontSize: 16,
                            color: AppColor.txtblack,
                            fontWeight: FontWeight.w600,
                          ),
                          trailing: Container(
                            height: 20,
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color(0XFF5A3514),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    size: 20,
                                    color: AppColor.white,
                                  ),
                                  BaseText(
                                    text: "Add",
                                    fontSize: 11,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: AppColor.conblck,
                              shape: BoxShape.circle,
                            ),
                          ),
                          title: BaseText(
                            text: "Greg",
                            fontSize: 16,
                            color: AppColor.txtblack,
                            fontWeight: FontWeight.w600,
                          ),
                          trailing: Container(
                            height: 20,
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color(0XFF5A3514),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    size: 20,
                                    color: AppColor.white,
                                  ),
                                  BaseText(
                                    text: "Add",
                                    fontSize: 11,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: AppColor.conblck,
                              shape: BoxShape.circle,
                            ),
                          ),
                          title: BaseText(
                            text: "Alex",
                            fontSize: 16,
                            color: AppColor.txtblack,
                            fontWeight: FontWeight.w600,
                          ),
                          trailing: Container(
                            height: 20,
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color(0XFF5A3514),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    size: 20,
                                    color: AppColor.white,
                                  ),
                                  BaseText(
                                    text: "Add",
                                    fontSize: 11,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: AppColor.conblck,
                              shape: BoxShape.circle,
                            ),
                          ),
                          title: BaseText(
                            text: "Arlene",
                            fontSize: 16,
                            color: AppColor.txtblack,
                            fontWeight: FontWeight.w600,
                          ),
                          trailing: Container(
                            height: 20,
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color(0XFF5A3514),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    size: 20,
                                    color: AppColor.white,
                                  ),
                                  BaseText(
                                    text: "Add",
                                    fontSize: 11,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: AppColor.conblck,
                              shape: BoxShape.circle,
                            ),
                          ),
                          title: BaseText(
                            text: "Aubery",
                            fontSize: 16,
                            color: AppColor.txtblack,
                            fontWeight: FontWeight.w600,
                          ),
                          trailing: Container(
                            height: 20,
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color(0XFF5A3514),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    size: 20,
                                    color: AppColor.white,
                                  ),
                                  BaseText(
                                    text: "Add",
                                    fontSize: 11,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: AppColor.conblck,
                              shape: BoxShape.circle,
                            ),
                          ),
                          title: BaseText(
                            text: "Aubrey",
                            fontSize: 16,
                            color: AppColor.txtblack,
                            fontWeight: FontWeight.w600,
                          ),
                          trailing: Container(
                            height: 20,
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color(0XFF5A3514),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    size: 20,
                                    color: AppColor.white,
                                  ),
                                  BaseText(
                                    text: "Add",
                                    fontSize: 11,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: AppColor.conblck,
                              shape: BoxShape.circle,
                            ),
                          ),
                          title: BaseText(
                            text: "Ann",
                            fontSize: 16,
                            color: AppColor.txtblack,
                            fontWeight: FontWeight.w600,
                          ),
                          trailing: Container(
                            height: 20,
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color(0XFF5A3514),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    size: 20,
                                    color: AppColor.white,
                                  ),
                                  BaseText(
                                    text: "Add",
                                    fontSize: 11,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
