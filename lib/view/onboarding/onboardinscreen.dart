import 'dart:ui';

import 'package:comfey/model/onboarding_model.dart';
import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/view/authentication/login.dart';
import 'package:comfey/view/authentication/signup.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:comfey/widgets/custom_button/long_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late int index = 0;

  void nextIndex() {
    setState(() {
      if (index < onboardAssets.length - 1) {
        index++;
      }
    });
  }

  void previousPage() {
    setState(() {
      if (index > 0) {
        index--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColor.white,
              AppColor.primary,
            ],
            stops: [0.58, 0.58],
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 5,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: Center(
                      child: Image.asset(
                        height: 250,
                        width: 350,
                        "assets/${onboardAssets[index].imagePath}.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 25,
                  child: GestureDetector(
                    onTap: previousPage,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                      child: const Center(
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  right: 25,
                  child: GestureDetector(
                    onTap: nextIndex,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                      child: const Center(
                        child: Icon(Icons.arrow_forward),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < onboardAssets.length; i++)
                    i == index
                        ? OnboardingScreen(true)
                        : OnboardingScreen(false)
                ],
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            BaseText(
              text: onboardAssets[index].title,
              fontSize: 24,
              color: AppColor.white,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            BaseText(
              text: onboardAssets[index].description,
              fontSize: 16,
              color: AppColor.white,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            LongButton(
              text: index == 0 ? "Continue" : "Get Started",
              onPressed: () {
                if (index == 0) {
                  nextIndex();
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SignUpPage(),
                    ),
                  );
                }
              },
              borderSide: BorderSide(color: AppColor.white),
            ),
            const SizedBox(
              height: 10,
            ),
            if (index == 1)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BaseText(
                    text: "Already have an account?",
                    fontSize: 16,
                    color: AppColor.white,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const LoginPage(),
                          ),
                        );
                      },
                      child: BaseText(
                        text: "Login",
                        fontSize: 16,
                        color: AppColor.white,
                        textAlign: TextAlign.center,
                      ))
                ],
              ),
          ],
        ),
      ),
    );
  }

  static Widget OnboardingScreen(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      height: 15,
      width: 15,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: isActive ? AppColor.primary : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
