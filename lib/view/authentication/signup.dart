import 'package:comfey/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:comfey/view/authentication/login.dart';
import 'package:comfey/widgets/custom_button/long_button.dart';
import 'package:comfey/widgets/home_navigation/home_navigation.dart';
import 'package:comfey/widgets/logo/logo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/appcolor.dart';
import '../../widgets/Text widgets/basetext.dart';
import '../../widgets/logo/social.dart';
import '../../widgets/textformfield widget/textformfield.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final FirebaseAuthServices _auth = FirebaseAuthServices();

  TextEditingController _email = TextEditingController();
  TextEditingController _fname = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _obscureText = true;

  @override
  void dispose() {
    // TODO: implement dispose
    _email.dispose();
    _fname.dispose();
    _password.dispose();
    super.dispose();
  }

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
                    text: "Create New Account",
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
                  CustomTextFormField(
                    controller: _fname,
                    hintText: "Fullname",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                    controller: _email,
                    hintText: "Email",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                    controller: _password,
                    hintText: "Password",
                    keyboardType: TextInputType.visiblePassword,
                    suffixIcon: IconButton(
                      onPressed: _toggleVisibility,
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: AppColor.primary,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  LongButton(
                      text: "Sign up",
                      onPressed: _signUp,
                      ),
                  const SizedBox(
                    height: 30,
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
                        text: "Have an account?",
                        fontSize: 16,
                        color: AppColor.txtblack,
                        fontWeight: FontWeight.w400,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const LoginPage(),
                            ),
                          );
                        },
                        child: BaseText(
                          text: "Log in",
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

  void _signUp() async {
    String fullname = _fname.text;
    String email = _email.text;
    String password = _password.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      print("User is successfully signedin");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const HomeNavigation(),
        ),
      );
    } else {
      print("Some error occured");
    }
  }
}
