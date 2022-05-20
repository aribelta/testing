import 'dart:async';
import 'package:flutter/material.dart';
import 'package:stars_apps/common/routes/route.dart';
import 'package:stars_apps/common/theme/theme.dart';

// NOTE : Splash screen awal ketika aplikasi baru dijalankan
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // NOTE : Fungsi untuk membuat splash screen berganti ke halaman selanjutnya secara Otomatis
  _startSpalshScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacementNamed(context, getStartedRoute);
    });
  }

  @override
  void initState() {
    super.initState();
    _startSpalshScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/images/logo_first.png',
                          width: 149,
                          height: 113,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Planetarian',
                          style: logoTextStyle.copyWith(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Logo designed\nby Roy Barber',
                          style: logoTextStyle,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 40,
                        )
                      ],
                    )),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      CircularProgressIndicator(),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
