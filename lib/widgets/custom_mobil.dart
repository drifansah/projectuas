import 'package:flutter/material.dart';

class CustomMobil extends StatelessWidget {
  final String imageUrl;
  final EdgeInsets margin;
  const CustomMobil({super.key, required this.imageUrl,this.margin=EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      margin: margin,
      padding: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        image: DecorationImage(
          image: AssetImage(
            imageUrl,
          ),
        ),
      ),
    );
  }
}
