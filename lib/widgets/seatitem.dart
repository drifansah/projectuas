import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeatItem extends StatelessWidget {
  //NOTE 0=BOOKED
  //1=AVAILABLE
  //2=SEAT

  final int status;
  const SeatItem({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return Color(0xffEF9A9A);
        case 1:
          return Colors.white;
        case 2:
          return Color(0xffF5A522);
        default:
          return Color(0xffF5A522);
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return Colors.white;
        case 1:
          return Colors.white;
        case 2:
          return Color(0xffF5A522);
        default:
          return Color(0xffF5A522);
      }
    }

    child() {
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return Center(
            child: Text(
              "YOU",
              style: GoogleFonts.ubuntu(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
          );
        case 2:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: borderColor(),
          )),
      child: child(),
    );
  }
}
