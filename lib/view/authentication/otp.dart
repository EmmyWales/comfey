import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:comfey/widgets/custom_button/long_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  late final int otpLength;
  late final ValueChanged<String>? onOtpEntered;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 9,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.arrow_back_ios),),
                           SizedBox(width: MediaQuery.sizeOf(context).width/3,),
                      BaseText(
                        text: "OTP",
                        fontSize: 26,
                        color: AppColor.txtblack,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const BaseText(
                    text: "Please enter the OTP sent to your mail",
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  OtpTextField(
                    numberOfFields: 4,
                    borderColor: AppColor.primary,
                    cursorColor: AppColor.primary,
                    enabledBorderColor: AppColor.primary,
                    disabledBorderColor: AppColor.primary,
                    focusedBorderColor: AppColor.primary,
                    borderRadius: BorderRadius.circular(18),
                    fieldWidth: 65,
                    showFieldAsBox: true,
                    onSubmit: (String verificationCode) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Verification Code"),
                              content:
                                  Text('Code entered is $verificationCode'),
                            );
                          });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BaseText(
                      text: "Didn't recieve OTP?",
                      fontSize: 16,
                      color: AppColor.subtxt),
                  TextButton(
                    onPressed: () {},
                    child: const BaseText(
                      text: "Resend OTP",
                      fontSize: 16,
                      color: Color(0XFF5A3514),
                      underlineText: true,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 4,
                  ),
                  LongButton(
                    text: "Verify",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
