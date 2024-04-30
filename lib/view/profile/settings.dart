import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: BaseText(
              text: "Update Profile",
              underlineText: true,
              fontSize: 16,
              color: AppColor.primary,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // const SizedBox(
            //   height: 5,
            // ),
            Container(
              height: 90,
              width: MediaQuery.sizeOf(context).width,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        BaseText(
                          text: "Personal User Profile",
                          fontSize: 18,
                          color: AppColor.txtblack,
                          fontWeight: FontWeight.w500,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BaseText(
                              text: "Profile status",
                              fontSize: 14,
                              color: AppColor.subtxt,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 25,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0XFFFBDBBE),
                              ),
                              child: const Center(
                                  child: BaseText(
                                text: "Completed",
                                fontSize: 11.5,
                                color: Color(0XFF5A3514),
                              )),
                            )
                          ],
                        ),
                      ],
                    ),
                    Center(
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/profile.png"),
                              fit: BoxFit.fill),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BaseText(
                      text: "First Name",
                      fontSize: 16,
                      color: AppColor.subtxt,
                      fontWeight: FontWeight.w400,
                    ),
                    BaseText(
                      text: "Jackson",
                      fontSize: 18,
                      color: AppColor.maintxt,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BaseText(
                      text: "Last Name",
                      fontSize: 16,
                      color: AppColor.subtxt,
                      fontWeight: FontWeight.w400,
                    ),
                    BaseText(
                      text: "Adebayo",
                      fontSize: 18,
                      color: AppColor.maintxt,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BaseText(
                      text: "Email",
                      fontSize: 16,
                      color: AppColor.subtxt,
                      fontWeight: FontWeight.w400,
                    ),
                    BaseText(
                      text: "jackson820@gmail.com",
                      fontSize: 16,
                      color: AppColor.maintxt,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    BaseText(
                      text: "Contact",
                      fontSize: 16,
                      color: AppColor.subtxt,
                      fontWeight: FontWeight.w400,
                    ),
                    BaseText(
                      text: "0906 2628 282",
                      fontSize: 16,
                      color: AppColor.maintxt,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BaseText(
                      text: "BVN",
                      fontSize: 16,
                      color: AppColor.subtxt,
                      fontWeight: FontWeight.w400,
                    ),
                    BaseText(
                      text: "31****2193",
                      fontSize: 16,
                      color: AppColor.maintxt,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    BaseText(
                      text: "Date of birth",
                      fontSize: 16,
                      color: AppColor.subtxt,
                      fontWeight: FontWeight.w400,
                    ),
                    BaseText(
                      text: "04-March-2023",
                      fontSize: 16,
                      color: AppColor.maintxt,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BaseText(
                      text: "Nationality",
                      fontSize: 16,
                      color: AppColor.subtxt,
                      fontWeight: FontWeight.w400,
                    ),
                    BaseText(
                      text: "Nigerian",
                      fontSize: 16,
                      color: AppColor.maintxt,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    BaseText(
                      text: "Matric-number",
                      fontSize: 16,
                      color: AppColor.subtxt,
                      fontWeight: FontWeight.w400,
                    ),
                    BaseText(
                      text: "UI20SME1011",
                      fontSize: 16,
                      color: AppColor.maintxt,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BaseText(
                      text: "Gender",
                      fontSize: 16,
                      color: AppColor.subtxt,
                      fontWeight: FontWeight.w400,
                    ),
                    BaseText(
                      text: "Male",
                      fontSize: 16,
                      color: AppColor.maintxt,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    BaseText(
                      text: "University",
                      fontSize: 16,
                      color: AppColor.subtxt,
                      fontWeight: FontWeight.w400,
                    ),
                    BaseText(
                      text: "University of Lagos",
                      fontSize: 16,
                      color: AppColor.maintxt,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
