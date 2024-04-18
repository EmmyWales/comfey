import 'dart:async';
import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/view/onboarding/onboardinscreen.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:comfey/widgets/custom_button/long_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/splash.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 3.5,
              ),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColor.primary, width: 2.5),
                ),
                child: Center(
                  child: Image.asset("assets/Bed.png"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              BaseText(
                text: "Comfey",
                fontSize: 30,
                color: AppColor.primary,
                fontWeight: FontWeight.w800,
              ),
              BaseText(
                text: "A home away from home",
                fontSize: 18,
                color: AppColor.txtblack,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 2.8,
              ),
              LongButton(
                  text: "Get Started",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const OnboardingScreen(),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
