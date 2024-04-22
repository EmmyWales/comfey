import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:flutter/material.dart';

class SucessfulDialogue extends StatelessWidget {
  const SucessfulDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColor.white,
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle_outline,
                size: 70,
                color: AppColor.primary,
              ),
              BaseText(
                text: "Document has been\nsuccessfully downloaded.",
                fontSize: 20,
                textAlign: TextAlign.center,
                color: AppColor.txtblack,
                fontWeight: FontWeight.w500,
              ),
              BaseText(
                text: "A copy of the document has been sent to your mail",
                fontSize: 11.5,
                color: AppColor.txtblack,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
