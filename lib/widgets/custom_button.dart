import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String tittle;
  final double widht;
  final double height;
  final Function() onPrassed;
  final EdgeInsets margin;

  const CustomButton({
    super.key,
    required this.tittle,
    this.widht = double.infinity,
    this.height = 55,
    required this.onPrassed,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht,
      height: height,
      margin: margin,
      child: TextButton(
        onPressed: onPrassed,
        style: TextButton.styleFrom(
          backgroundColor: Color(0xff2E5274),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        child: Text(
          tittle,
          style: GoogleFonts.poppins(
            color: Color(0xffFFFFFF),
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
