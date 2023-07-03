import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uasku/widgets/custom_navigation_item.dart';

class RiawayatPembelian extends StatelessWidget {
  const RiawayatPembelian({super.key});

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
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/icon_mobil.png",
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 36,
                  width: 103,
                  child: Text(
                    "History",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget customBottonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(top: 15),
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
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  margin: EdgeInsets.only(
                    left: 17,
                    top: 12,
                    right: 27,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/image_profil.png",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Hi, Ichsan Nur R Y",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "The following is your travel history",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 180,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff357497),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        top: 9,
                        right: 25,
                      ),
                      height: 42.19,
                      width: 75,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/image_car.png"),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Toyota Alphard",
                        style: GoogleFonts.imprima(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 17,
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 25),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Bandunng",
                            style: GoogleFonts.imprima(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "20:00",
                            style: GoogleFonts.imprima(
                              fontSize: 27,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "18 Nov 2023",
                            style: GoogleFonts.imprima(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 29,
                        width: 13,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/icon_ganti.png"),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Semarang",
                            style: GoogleFonts.imprima(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            " 03:00",
                            style: GoogleFonts.imprima(
                              fontSize: 27,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "19 Nov 2023",
                            style: GoogleFonts.imprima(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 180,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff357497),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        top: 9,
                        right: 25,
                      ),
                      height: 42.19,
                      width: 75,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/image_bus.png"),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Sinar Diri Jaya",
                        style: GoogleFonts.imprima(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 17,
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 25),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Cikarang",
                            style: GoogleFonts.imprima(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "17:20",
                            style: GoogleFonts.imprima(
                              fontSize: 27,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "16 Nov 2023",
                            style: GoogleFonts.imprima(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 29,
                        width: 13,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/icon_ganti.png"),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Yogyakarta",
                            style: GoogleFonts.imprima(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            " 05:15",
                            style: GoogleFonts.imprima(
                              fontSize: 27,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "17 Nov 2023",
                            style: GoogleFonts.imprima(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 180,
            width: double.infinity,
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 10,
              bottom: 100,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff357497),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        top: 9,
                        right: 25,
                      ),
                      height: 42.19,
                      width: 75,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/image_car.png"),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Bhineka Diri Jaya",
                        style: GoogleFonts.imprima(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 17,
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 25),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Bandunng",
                            style: GoogleFonts.imprima(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "17:20",
                            style: GoogleFonts.imprima(
                              fontSize: 27,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "01 Nov 2023",
                            style: GoogleFonts.imprima(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 29,
                        width: 13,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/icon_ganti.png"),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Bogor",
                            style: GoogleFonts.imprima(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            " 21:10",
                            style: GoogleFonts.imprima(
                              fontSize: 27,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "01 Nov 2023",
                            style: GoogleFonts.imprima(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff87CEEB),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header(),
                    form(),
                  ],
                ),
              ],
            ),
            customBottonNavigation(),
          ],
        ),
      ),
    );
  }
}
