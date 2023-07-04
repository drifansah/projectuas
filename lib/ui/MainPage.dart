import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:uasku/ui/BonusPage.dart';
import 'package:uasku/ui/choose_seat_elf.dart';
import 'package:uasku/widgets/custom_button.dart';
import 'package:uasku/widgets/custom_mobil.dart';
import 'package:uasku/widgets/custom_navigation_item.dart';
import 'package:uasku/widgets/custom_textField.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(bottom: 23),
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        height: 83,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: Color(0xff1E90FF)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 59.77,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/icon_mobil.png",
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Hi, ichsan",
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.imprima(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/image_profil.png",
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget typeMobil() {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChooseSeatElef(),
                    ),
                  );
                },
                child: CustomMobil(
                  imageUrl: "assets/image_bus.png",
                  margin: EdgeInsets.only(
                    left: 22,
                  ),
                ),
              ),
              CustomMobil(
                imageUrl: "assets/image_shuttle.png",
                margin: EdgeInsets.only(
                  left: 22,
                ),
              ),
              CustomMobil(
                imageUrl: "assets/image_elf.png",
                margin: EdgeInsets.only(
                  left: 22,
                ),
              ),
              CustomMobil(
                imageUrl: "assets/image_car.png",
                margin: EdgeInsets.only(
                  left: 22,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget customBottonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(
              18,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/main");
                },
                child: CustomBottonNavigationItem(
                  imageUrl: 'assets/icon_home.png',
                  isSelected: true,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/riwayat_pembelian");
                },
                child: CustomBottonNavigationItem(
                  imageUrl: 'assets/icon_riwayat.png',
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: CustomBottonNavigationItem(
                  imageUrl: 'assets/icon_pemesanan.png',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/profil");
                },
                child: CustomBottonNavigationItem(
                  imageUrl: 'assets/icon_profil.png',
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget form() {
      return Container(
        height: 263,
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          vertical: 31,
          horizontal: 12,
        ),
        padding: EdgeInsets.only(left: 12, top: 26, right: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Color(0xff357497),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 19, left: 13),
                  color: Colors.white,
                  child: Text(
                    textAlign: TextAlign.start,
                    "Boarding From",
                    style: GoogleFonts.ubuntu(
                      color: Color(0xff060409),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 19, left: 13),
                  color: Colors.white,
                  child: Text(
                    "Where are you going?",
                    style: GoogleFonts.ubuntu(
                      color: Color(0xff060409),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 13,
                    left: 19,
                    right: 56,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 25,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: Colors.white)),
                        child: Center(
                          child: Text("Today",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: Color(0xffF5F5F5),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: Colors.white)),
                        child: Center(
                          child: Text("Tomorrow",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: Color(0xffF5F5F5),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: Colors.white)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/icon_calender.png"),
                                ),
                              ),
                            ),
                            Text("data",
                                style: GoogleFonts.poppins(
                                    color: Color(0xffF5F5F5),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              top: 30,
              right: 10,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: 40,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Color(0xff2E5274),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      scale: 4.0,
                      image: AssetImage(
                        "assets/icon_switch.png",
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(
                    margin: EdgeInsets.only(bottom: 10),
                    tittle: "FIND",
                    onPrassed: () {
                      Navigator.pushNamed(context, '/choose-seat');
                    }))
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff87CEEB),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                Container(
                  margin: EdgeInsets.only(
                    left: 26,
                    bottom: 23,
                  ),
                  child: Text(
                    "SELECTED TYPE",
                    style: GoogleFonts.imprima(
                      color: Color(0xff060409),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                typeMobil(),
                form(),
              ],
            ),
            customBottonNavigation(),
          ],
        ),
      ),
    );
  }
}
