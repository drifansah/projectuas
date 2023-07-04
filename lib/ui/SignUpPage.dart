import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:uasku/shared/theme.dart';
import 'package:uasku/ui/LoginPage.dart';

import 'package:uasku/widgets/custom_textField.dart';
import 'package:uasku/widgets/forms.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
 final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff87CEEB),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 50,
              bottom: 40,
            ),
            width: 155,
            height: 155,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_mobil.png'),
              ),
            ),
          ),
          Text(
            "Buat dulu akunmu\nAgar dapat login ke aplikasi",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextFormField(
                  label: "Email Address",
                  keyboardType: TextInputType.emailAddress,
                                    controller: _emailTextController,

                ),
                const SizedBox(
                  height: 16,
                ),
                //  CustomTextFormField(
                //   label: "Username",

                //   controller: _userNameTextController,

                // ),
                //  const SizedBox(
                //   height: 16,
                // ),
                CustomTextFormField(
                  label: "Password",
                  isObscure: true,
                                    controller: _passwordTextController,

                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      "Forgot Password",
                      style: lightBlueTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: "Sign Up",
                   onPressed: () {
                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              // email: "alvitoadty@gmail.com",
                              // password: "12345678"
                              email: _emailTextController.text,
                              password: _passwordTextController.text)
                          .then((value) {
                        print("Created New Account");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      }).onError((error, stackTrace) {
                        print("Error ${error.toString()}");
                      });
                    }
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

