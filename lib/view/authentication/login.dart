import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/view/authentication/reset_password.dart';
import 'package:comfey/view/authentication/signup.dart';
import 'package:comfey/view/authentication/select_university.dart';
import 'package:comfey/widgets/Text%20widgets/basetext.dart';
import 'package:comfey/widgets/custom_button/long_button.dart';
import 'package:comfey/widgets/logo/logo.dart';
import 'package:comfey/widgets/logo/social.dart';
import 'package:comfey/widgets/textformfield%20widget/textformfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

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
                  const Logo(),
                  const SizedBox(
                    height: 20,
                  ),
                  BaseText(
                    text: "Welcome Back!",
                    fontSize: 26,
                    color: AppColor.txtblack,
                    fontWeight: FontWeight.w600,
                  ),
                  const BaseText(
                    text: "Please enter your details here",
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomTextFormField(
                    // controller: _email,
                    hintText: "Email",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                    // controller: _pword,
                    hintText: "Password",
                    //keyboardType: TextInputType.visiblePassword,
                    suffixIcon: IconButton(
                      onPressed: _toggleVisibility,
                      icon: Icon(
                        _obscureText
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: AppColor.primary,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const ResetPassword(),
                          ),
                        );
                      },
                      child: BaseText(
                          text: "forgot password?",
                          fontSize: 16,
                          color: AppColor.subtxt),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  LongButton(
                      text: "Log in",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const SelectUniversity(),
                          ),
                        );
                      }),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 1,
                          width: 100,
                          color: AppColor.subtxt,
                        ),
                        BaseText(
                            text: "Or continue with",
                            fontSize: 16,
                            color: AppColor.subtxt),
                        Container(
                          height: 1,
                          width: 100,
                          color: AppColor.subtxt,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Socials(image: "Google"),
                      const SizedBox(
                        width: 20,
                      ),
                      Socials(image: "Facebook"),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BaseText(
                        text: "Don’t have an account?",
                        fontSize: 16,
                        color: AppColor.txtblack,
                        fontWeight: FontWeight.w400,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SignUpPage(),
                            ),
                          );
                        },
                        child: BaseText(
                          text: "Sign Up",
                          fontSize: 16,
                          color: AppColor.primary,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
