import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String tittle;
  final String hinText;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.tittle,
    required this.hinText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 31,
        left: 12,
        
      ),
    );
  }
}
