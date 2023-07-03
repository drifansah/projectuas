import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uasku/ui/BonusPage.dart';
import 'package:uasku/ui/SignUpPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/Menu Akun.2.png"),
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 100,
            right: 100,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: InputBorder.none,
                    ),
                    obscureText: true,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text)
                        .then((value) => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BonusPage())))
                        .onError(
                          (error, stackTrace) =>
                              print("Error ${error.toString()}"),
                        );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 48, vertical: 14),
                    decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Text(
                      'Start Your Journey',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: const Color(0xff0D2841),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpPage()));
            },
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 48, vertical: 14),
                child: Text(
                  'Create new account',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: const Color(0xff0D2841),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
