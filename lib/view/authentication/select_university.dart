import 'package:comfey/data/university_options.dart';
import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/view/authentication/update_user.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:comfey/widgets/custom_button/long_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectUniversity extends StatefulWidget {
  const SelectUniversity({super.key});

  @override
  State<SelectUniversity> createState() => _SelectUniversityState();
}

class _SelectUniversityState extends State<SelectUniversity> {
  String? _selectedOption;

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
                    height: MediaQuery.sizeOf(context).height / 9,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BaseText(
                    text: "Select Your University",
                    fontSize: 26,
                    color: AppColor.txtblack,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(height: 10),
                  const BaseText(
                    text: "Please select your University",
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 55,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.primary),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: DropdownButton<String>(
                            hint: BaseText(text: "Select University", fontSize: 16, color: AppColor.primary),
                            isExpanded: true,
                            value: _selectedOption,
                            icon: const Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Color(0XFF212121),
                              size: 28,
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                _selectedOption = newValue;
                              });
                            },
                            items: options.map(
                              (String option) {
                                return DropdownMenuItem<String>(
                                  value: option,
                                  
                                  child: Text(
                                    option,
                                    style: GoogleFonts.poppins(
                                        color: AppColor.primary,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 1.8,
                  ),
                  LongButton(
                    text: "Next",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const UpdateUserDetails(),
                        ),
                      );
                    },
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
