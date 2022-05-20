import 'package:flutter/material.dart';
import 'package:stars_apps/common/routes/route.dart';
import 'package:stars_apps/common/theme/theme.dart';
import 'package:stars_apps/ui/widgets/constellations_card.dart';
import 'package:stars_apps/ui/widgets/stars_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                _header(context),
                const SizedBox(
                  height: 25,
                ),
                _starsParts(),
                const SizedBox(
                  height: 25,
                ),
                _constellationsParts(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Explore Now',
              style: titleblackTextStyle.copyWith(fontSize: 24),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, aboutRoute);
              },
              icon: Icon(
                Icons.drag_handle_rounded,
                color: greyColor,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "Let's find some stars",
          style: greyTextStyle.copyWith(fontSize: 16),
        ),
      ],
    );
  }

  Widget _starsParts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Stars',
          style: titleblackTextStyle.copyWith(fontSize: 16),
        ),
        const SizedBox(
          height: 15,
        ),
        // NOTE : Widget StarsCard terdapat di folder widgets diberi nama file stars_card.dart
        const StarsCard(),
      ],
    );
  }

  Widget _constellationsParts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Constellations',
          style: titleblackTextStyle.copyWith(fontSize: 16),
        ),
        const SizedBox(
          height: 15,
        ),
        // NOTE : Widget ConstellationsCard terdapat di folder widgets diberi nama file constellations_card.dart
        const ConstellationsCard()
      ],
    );
  }
}
