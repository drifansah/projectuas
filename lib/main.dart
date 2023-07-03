import 'package:flutter/material.dart';
import 'package:uasku/ui/BonusPage.dart';
import 'package:uasku/ui/GetStarted.dart';
import 'package:uasku/ui/LoginPage.dart';
import 'package:uasku/ui/MainPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uasku/ui/SignUpPage.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:uasku/ui/Splash%20Page.dart';
import 'package:uasku/ui/choose_seat_bus.dart';
import 'package:uasku/ui/choose_seat_car.dart';
import 'package:uasku/ui/choose_seat_elf.dart';
import 'package:uasku/ui/choose_seat_shuttle.dart';
import 'package:uasku/ui/profil.dart';
import 'package:uasku/ui/riwayat_pembelian.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => const GetStartedPage(),
        '/sign-up': (context) => LoginPage(),
        '/bonus': (context) => const BonusPage(),
        '/main': (context) => const MainPage(),
        '/choose-seat': (context) => ChooseSeatBus(),
        '/choose-seat-elf': (context) => ChooseSeatElef(),
        '/choose-seat-car': (context) => ChooseSeatCar(),
        '/choose-seat-shuttle': (context) => ChooseSeatShuttle(),
        '/profil': (context) => Profil(),
        '/riwayat_pembelian': (context) => RiawayatPembelian(),
      },
    );
  }
}
