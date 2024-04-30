import 'dart:async';

import 'package:comfey/model/homemodel.dart';
import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/view/home/map.dart';
import 'package:comfey/view/product_view/product_view.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:comfey/widgets/custom_button/long_button.dart';
import 'package:comfey/widgets/textFormField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  late Timer _timer;
  int _currentIndex = 0;
  final List<String> _imagePaths = [
    "assets/window.png",
    "assets/home2.png",
    "assets/home3.png",
    "assets/home4.png",
    "assets/home5.png",
  ];
  @override
  void initState() {
    super.initState();

    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 4), (Timer timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _imagePaths.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 270,
                    color: Colors.white,
                    child: GestureDetector(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 240,
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(_imagePaths[_currentIndex]),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 40,
                                ),
                                Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      _showMapModal(context);
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          color: AppColor.white,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 25,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                color: AppColor.primary,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.location_on_outlined,
                                                  color: AppColor.white,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 0,
                                            ),
                                            const BaseText(
                                                text: "Ajah, Lagos",
                                                fontSize: 14,
                                                color: Colors.black)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                                  decoration:
                                                      const BoxDecoration(
                                                          color: Colors.grey,
                                                          shape:
                                                              BoxShape.circle),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                BaseText(
                                                    text: "Hi, Femi",
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                    color: AppColor.white),
                                                BaseText(
                                                    text: "Welcome to Comfey",
                                                    fontSize: 14,
                                                    color: AppColor.white),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
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
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 25,
                    right: 25,
                    child: SizedBox(
                      width: 250,
                      child: Material(
                        elevation: 1,
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          height: 60,
                          width: 250,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Center(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.search),
                                  border: InputBorder.none,
                                  hintText: "Search here...",
                                  hintStyle: GoogleFonts.poppins(
                                    color: AppColor.iconblck,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BaseText(
                      text: "Accomodation",
                      fontSize: 22,
                      color: AppColor.txtblack,
                      fontWeight: FontWeight.w600,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 320,
                      child: ListView.separated(
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 10),
                        scrollDirection: Axis.horizontal,
                        physics: const ClampingScrollPhysics(),
                        itemCount: accomodation.length,
                        itemBuilder: ((context, index) {
                          final accomodations = accomodation[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const ProductView(),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                height: 340,
                                width: 260,
                                child: Material(
                                  elevation: 4,
                                  borderRadius: BorderRadius.circular(15),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 260,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15)),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/${accomodations.imagePaths}.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                BaseText(
                                                  text: accomodations.name,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColor.conblck,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 18,
                                                      width: 65,
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0XFFD28E50),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                      ),
                                                      child: const Center(
                                                        child: BaseText(
                                                          text: "Classic",
                                                          fontSize: 12,
                                                          color:
                                                              Color(0XFF5A3514),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 4),
                                                    Container(
                                                      height: 18,
                                                      width: 65,
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0XFFD28E50),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                      ),
                                                      child: const Center(
                                                        child: BaseText(
                                                          text: "Available",
                                                          fontSize: 12,
                                                          color:
                                                              Color(0XFF5A3514),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.location_on_outlined,
                                                  size: 16,
                                                ),
                                                BaseText(
                                                    text:
                                                        accomodations.location,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Row(
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Color(0XFFFFE500),
                                                      size: 16,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Color(0XFFFFE500),
                                                      size: 16,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Color(0XFFFFE500),
                                                      size: 16,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Color(0XFFFFE500),
                                                      size: 16,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                BaseText(
                                                  text: "4.3 Rating",
                                                  fontSize: 13,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                            Divider(),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                BaseText(
                                                  text:
                                                      "\$ ${accomodations.price.toString()}",
                                                  fontSize: 14,
                                                  color: Color(0XFF1F1E1E),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                Icon(Icons.bookmark)
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    BaseText(
                      text: "Expensive accomodation",
                      fontSize: 22,
                      color: AppColor.txtblack,
                      fontWeight: FontWeight.w600,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 150,
                      child: ListView.separated(
                          separatorBuilder: (context, index) =>
                              SizedBox(width: 10),
                          scrollDirection: Axis.horizontal,
                          physics: const ClampingScrollPhysics(),
                          itemCount: expensiveAccomodation.length,
                          itemBuilder: ((context, index) {
                            final expensiveAccomodations =
                                expensiveAccomodation[index];
                            return Container(
                              height: 130,
                              width: 373,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Material(
                                elevation: 4,
                                borderRadius: BorderRadius.circular(20),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 120,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/${expensiveAccomodations.imagePaths}.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                BaseText(
                                                  text: expensiveAccomodations
                                                      .name,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColor.conblck,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.location_on_outlined,
                                                  size: 16,
                                                ),
                                                BaseText(
                                                    text: expensiveAccomodations
                                                        .location,
                                                    fontSize: 13,
                                                    color: Colors.black),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Row(
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Color(0XFFFFE500),
                                                      size: 16,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Color(0XFFFFE500),
                                                      size: 16,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Color(0XFFFFE500),
                                                      size: 16,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Color(0XFFFFE500),
                                                      size: 16,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                BaseText(
                                                  text: "4.3 Rating",
                                                  fontSize: 13,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                BaseText(
                                                  text:
                                                      "\$ ${expensiveAccomodations.price.toString()}",
                                                  fontSize: 14,
                                                  color: Color(0XFF1F1E1E),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                SizedBox(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width /
                                                          5,
                                                ),
                                                const Icon(
                                                  Icons.bookmark,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          })),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showMapModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.sizeOf(context).height /0.8,
          width: MediaQuery.sizeOf(context).width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/map.png"), fit: BoxFit.fill),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: FormField2(
                    iconData: Icon(
                      Icons.location_on,
                      color: AppColor.primary,
                    ),
                    text: "Search here...",
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 3.4,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppColor.primary,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.location_searching_rounded,
                          color: AppColor.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 6.5,
                ),
                Container(
                  height: 308,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    color: AppColor.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        FormField2(
                          text: "Lagos Island",
                          iconData: Icon(
                            Icons.location_searching_rounded,
                            color: AppColor.primary,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FormField2(
                          text: "Where to?",
                          suffixData: TextButton(
                            onPressed: () {},
                            child: BaseText(
                              text: "Map",
                              fontSize: 18,
                              color: AppColor.conblck,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        LongButton(
                            text: "Enter Destination ", onPressed: () {}),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
