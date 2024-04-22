import 'dart:math';

import 'package:comfey/model/homemodel.dart';
import 'package:comfey/utils/appcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/Text widgets/basetext.dart';

class RegularScreen extends StatefulWidget {
  const RegularScreen({super.key});

  @override
  State<RegularScreen> createState() => _RegularScreenState();
}

class _RegularScreenState extends State<RegularScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Select here...",
                  prefixIcon: Icon(Icons.search),
                  hintMaxLines: 1,
                  hintStyle: GoogleFonts.poppins(color: AppColor.subtxt),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: AppColor.subtxt),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: AppColor.subtxt))),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.7,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: expensiveAccomodation.length,
                itemBuilder: ((context, index) {
                  final accomodations = expensiveAccomodation[index];
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 350,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 200,
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
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  BaseText(
                                    text: accomodations.name,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.conblck,
                                  ),
                                  // Row(
                                  //   mainAxisAlignment:
                                  //       MainAxisAlignment.spaceBetween,
                                  //   children: [
                                  //     Container(
                                  //       height: 18,
                                  //       width: 65,
                                  //       decoration: BoxDecoration(
                                  //         color: const Color(0XFFD28E50),
                                  //         borderRadius:
                                  //             BorderRadius.circular(5),
                                  //       ),
                                  //       child: const Center(
                                  //         child: BaseText(
                                  //           text: "Classic",
                                  //           fontSize: 12,
                                  //           color: Color(0XFF5A3514),
                                  //         ),
                                  //       ),
                                  //     ),
                                  //  ],
                                  // )
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
                                      text: accomodations.location,
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
                                    MainAxisAlignment.spaceBetween,
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
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
