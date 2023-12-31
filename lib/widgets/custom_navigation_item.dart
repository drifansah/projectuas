import 'package:flutter/material.dart';



class CustomBottonNavigationItem extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;

  const CustomBottonNavigationItem({
    super.key,
    required this.imageUrl,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imageUrl,
              ),
            ),
          ),
        ),
        Container(
          height: 2,
          width: 30,
          decoration: BoxDecoration(
            color: isSelected ? Color(0xff5C40CC) : Colors.transparent,
            borderRadius: BorderRadius.circular(18),
          ),
        )
      ],
    );
  }
}
