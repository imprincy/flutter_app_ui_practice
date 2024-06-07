import 'dart:async';

import 'package:app_practice/entry.dart';
import 'package:app_practice/fb_application/home_page.dart';
import 'package:app_practice/fb_application/screen.dart';
import 'package:app_practice/first_screen.dart';
import 'package:app_practice/gettingData.dart';
import 'package:app_practice/gpay_app/app_screen.dart';
import 'package:app_practice/home.dart';
import 'package:app_practice/increment_counter.dart';
import 'package:app_practice/karyam_home.dart';
import 'package:app_practice/navigation_screen.dart';
import 'package:app_practice/second_screen.dart';
import 'package:app_practice/teacher_screen.dart';
import 'package:app_practice/widgets/api_call.dart';
import 'package:app_practice/widgets/api_calling_screen.dart';
import 'package:app_practice/widgets/api_thru_provider/apiScreen.dart';
import 'package:app_practice/widgets/fift_api/animechan.dart';
import 'package:app_practice/widgets/fourth_api/cat.dart';
import 'package:app_practice/widgets/second_api/second_testing.dart';
import 'package:app_practice/widgets/third_api/pokemon_test.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();
  var mobileNumber = await pref.getString("mobileNumber") ?? "";

  runApp(MyApp(
    isUserLogin: mobileNumber.toString().isNotEmpty,
  ));
}

class MyApp extends StatelessWidget {
  final bool isUserLogin;

  const MyApp({super.key, required this.isUserLogin});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'navigation',
      routes: {
        'splashScreen': (context) => const SplashScreen(),
        'firstScreen': (context) => const FirstScreen(),
        'secondScreen': (context) => const SecondScreen(),
        'entry': (context) => Entrance(),
        'stay': (context) => Stay(),
        'facebook': (context) => const Facebook(),
        'home': (context) => HomePage(),
        'increment': (context) => const Increment(),
        'screen': (context) => Screen(),
        'ppi': (context) => const PpiCall(),
        'screening': (context) => const Screening(),
        'product': (context) => const Products(),
        'pokemon': (context) => Pokemon(),
        'cat': (context) => Cats(),
        'anime': (context) => Animechan(),
        'teacher': (context) => Teacher(),
        'data': (context) => Data(),
        'appScreen': (context) => GpayScreen(),
        'navigation':(context)=>TapNavigation()
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds:1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Home(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(""),
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/images/astro.png"),
              radius: 60,
            ),
            Text(
              "Astrotalk",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
