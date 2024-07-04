import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/view/profile/old_payment.dart';
import 'package:comfey/view/profile/payment.dart';
import 'package:comfey/view/profile/settings.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: BaseText(
                  text: "Settings",
                  fontSize: 20,
                  color: AppColor.txt,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Material(
                elevation: 1,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 90,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              height: 65,
                              width: 65,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/profile.png",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BaseText(
                            text: "Jackson. O",
                            fontSize: 18,
                            color: AppColor.txt,
                            fontWeight: FontWeight.w500,
                          ),
                          BaseText(
                            text: "jackson820@gmail.com",
                            fontSize: 14,
                            color: AppColor.primary,
                            fontWeight: FontWeight.w500,
                          ),
                          const BaseText(
                            text: "+234 9062628282",
                            fontSize: 14,
                            color: Color(0XFF949494),
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Material(
                elevation: 1,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 200,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SettingsScreen(),
                            ),
                          );
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.person,
                            color: AppColor.black,
                            size: 28,
                          ),
                          title: const BaseText(
                            text: "Account Information",
                            fontSize: 18,
                            color: Color(
                              0XFF1A1A1A,
                            ),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 22,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const PaymentScreen(),
                            ),
                          );
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.credit_card,
                            color: AppColor.black,
                            size: 28,
                          ),
                          title: const BaseText(
                            text: "Payment method",
                            fontSize: 18,
                            color: Color(
                              0XFF1A1A1A,
                            ),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 22,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const OldPaymentDocument(),
                            ),
                          );
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.account_box_rounded,
                            color: AppColor.black,
                            size: 28,
                          ),
                          title: const BaseText(
                            text: "Old payment documents",
                            fontSize: 18,
                            color: Color(
                              0XFF1A1A1A,
                            ),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Material(
                elevation: 1,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 200,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.translate,
                          color: AppColor.black,
                          size: 28,
                        ),
                        title: const BaseText(
                          text: "Language and Region",
                          fontSize: 18,
                          color: Color(
                            0XFF1A1A1A,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 22,
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.location_on,
                          color: AppColor.black,
                          size: 28,
                        ),
                        title: const BaseText(
                          text: "Location",
                          fontSize: 18,
                          color: Color(
                            0XFF1A1A1A,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 22,
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.lock,
                          color: AppColor.black,
                          size: 28,
                        ),
                        title: const BaseText(
                          text: " Privacy and security",
                          fontSize: 18,
                          color: Color(
                            0XFF1A1A1A,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 22,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.brightness_medium_outlined,
                  size: 30,
                  color: AppColor.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
