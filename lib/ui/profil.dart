import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uasku/widgets/custom_button.dart';
import 'package:uasku/widgets/custom_navigation_item.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

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
                    "AKUN",
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

    Widget form() {
      return Container(
        height: 400,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 5,
          right: 19,
          left: 19,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Color(0xff357497),
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.only(
                top: 14,
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
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "Premium Member",
                style: GoogleFonts.aBeeZee(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Container(
              height: 53,
              width: 285,
              padding: EdgeInsets.only(
                top: 14,
                left: 81,
                right: 81,
              ),
              margin: EdgeInsets.only(
                top: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Color(0xff2E5274),
              ),
              child: Text(
                "Ichsan Nur R Y",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              height: 53,
              width: 285,
              padding: EdgeInsets.only(
                top: 14,
              ),
              margin: EdgeInsets.symmetric(
                vertical: 14,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Color(0xff2E5274),
              ),
              child: Text(
                "0821-3562-1706",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              height: 53,
              width: 285,
              padding: EdgeInsets.only(
                top: 14,
              ),
              margin: EdgeInsets.only(
                bottom: 21,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Color(0xff2E5274),
              ),
              child: Text(
                "ichsannurrachmad7@gmail.com",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
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
                Align(
                    alignment: Alignment.bottomCenter,
                    child: CustomButton(
                        tittle: "LOGOUT",
                        margin: EdgeInsets.only(
                          bottom: 5,
                          top: 25,
                        ),
                        height: 39,
                        widht: 200,
                        onPrassed: () {
                          Navigator.pushNamed(context, '/sign-up');
                        }))
              ],
            ),
            customBottonNavigation(),
          ],
        ),
      ),
    );
  }
}
