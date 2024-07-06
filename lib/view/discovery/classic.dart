import 'package:comfey/model/homemodel.dart';
import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/view/product_view/product_view.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassicScreen extends StatefulWidget {
  const ClassicScreen({super.key});

  @override
  State<ClassicScreen> createState() => _ClassicScreenState();
}

class _ClassicScreenState extends State<ClassicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Select here...",
                  prefixIcon: const Icon(Icons.search),
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
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: expensiveAccomodation.length,
                itemBuilder: ((context, index) {
                  final accomodations = expensiveAccomodation[index];
                  return Expanded(
                    child: Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(20),
                      child: GestureDetector(
                         onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const ProductView(),
                            ),
                          );
                        },
                        child: Container(
                          // margin: const EdgeInsets.all(10),
                          height: 400,
                          // width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 138,
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
                                    const Divider(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        BaseText(
                                          text:
                                              "\$ ${accomodations.price.toString()}",
                                          fontSize: 14,
                                          color: const Color(0XFF1F1E1E),
                                          fontWeight: FontWeight.w600,
                                        ),
                                        const Icon(Icons.bookmark)
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
          ],
        ),
      ),
    );
  }
}
