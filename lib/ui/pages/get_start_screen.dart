import 'package:flutter/material.dart';
import 'package:stars_apps/common/routes/route.dart';
import 'package:stars_apps/common/theme/theme.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/splashscreen.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 4.9,
              ),
              Container(
                width: 229,
                height: 112,
                decoration: BoxDecoration(
                  color: blackColor.withOpacity(0.6),
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 4.9,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 229,
                  height: 112,
                  decoration: BoxDecoration(
                    color: const Color(0xff003077).withOpacity(0.5),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 4.5,
                ),
                Text(
                  'Find the Stars\nthat are All\naround You',
                  style: whiteTextStyle.copyWith(
                      fontWeight: FontWeight.w500, fontSize: 26),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  '"The darkest night\nproduces the brightest\nset of stars"',
                  style: descSplashTextStyle,
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () => Navigator.pushNamed(context, homeRoute),
                  child: Column(
                    children: [
                      Text(
                        'Get Started',
                        style: whiteTextStyle.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: whiteColor,
                      ),
                      const SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
