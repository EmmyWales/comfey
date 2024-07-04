import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:comfey/widgets/home_navigation/home_navigation.dart';
import 'package:comfey/widgets/custom_button/long_button.dart';
import 'package:comfey/widgets/textformfield%20widget/textformfield.dart';
import 'package:flutter/material.dart';

class UpdateUserDetails extends StatefulWidget {
  const UpdateUserDetails({super.key});

  @override
  State<UpdateUserDetails> createState() => _UpdateUserDetailsState();
}

class _UpdateUserDetailsState extends State<UpdateUserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 8,
                  ),
                  BaseText(
                    text: "Update user  details",
                    fontSize: 26,
                    color: AppColor.txtblack,
                    fontWeight: FontWeight.w600,
                  ),
                  const BaseText(
                    text: "Please fill in your details here",
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomTextFormField(
                    // controller: _fname,
                    hintText: "First Name",
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   const CustomTextFormField(
                    // controller: _lname,
                    hintText: "Last Name",
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                   const CustomTextFormField(
                    // controller: _email,
                    hintText: "Email",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   const CustomTextFormField(
                    // controller: _pnum,
                    hintText: "Contact",
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   const CustomTextFormField(
                    // controller: _mnum,
                    hintText: "Matric-number",
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   const CustomTextFormField(
                    // controller: _email,
                    hintText: "Gender",
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  LongButton(
                      text: "Next",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const HomeNavigation(),
                          ),
                        );
                      }),
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
