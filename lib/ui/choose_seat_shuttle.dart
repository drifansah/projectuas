import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uasku/widgets/custom_button.dart';
import 'package:uasku/widgets/seatitem.dart';

import 'package:uasku/ui/choose_seat_bus.dart';

class ChooseSeatShuttle extends StatelessWidget {
  const ChooseSeatShuttle({super.key});

  @override
  Widget build(BuildContext context) {
    Widget tittle() {
      return Container(
        height: 99.62,
        width: 200,
        margin: EdgeInsets.symmetric(
          horizontal: 80,
          vertical: 60,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/icon_mobil.png",
            ),
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //NOTE: AVAILABLE
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/icon_booked.png",
                  ),
                ),
              ),
            ),
            Text(
              "Available",
              style: GoogleFonts.ubuntu(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(
                left: 10,
                right: 6,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/icon_available.png",
                  ),
                ),
              ),
            ),
            Text(
              "Selected",
              style: GoogleFonts.ubuntu(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(
                left: 10,
                right: 6,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/icon_seat.png",
                  ),
                ),
              ),
            ),
            Text(
              "Unavailable",
              style: GoogleFonts.ubuntu(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
    }

    Widget selecSeat() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        padding: EdgeInsets.only(
          left: 22,
          right: 22,
          bottom: 30,
        ),
        child: Column(
          children: [
            //NOTE: SEAT INDICATORS
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text("A",
                            style: GoogleFonts.ubuntu(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            )),
                      ),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text("B",
                            style: GoogleFonts.ubuntu(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            )),
                      ),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text("",
                            style: GoogleFonts.ubuntu(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //NOTE: SEAT 1
            Container(
              margin: EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/icon_setir.png"))),
                  ),
                ],
              ),
            ),
            //NOTE: SEAT 2
            Container(
              margin: EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),
           
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: Color(0xff87CEEB),
        body: SafeArea(
          child: Stack(
            children: [
              ListView(
                padding: EdgeInsets.symmetric(horizontal: 24),
                children: [
                  tittle(),
                  seatStatus(),
                  selecSeat(),
                ],
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomButton(
                      tittle: "FIND",
                      margin: EdgeInsets.only(
                        bottom: 5,
                      ),
                      height: 39,
                      widht: 200,
                      onPrassed: () {
                        Navigator.pushNamed(context, '/choose-seat');
                      }))
            ],
          ),
        ));
  }
}
