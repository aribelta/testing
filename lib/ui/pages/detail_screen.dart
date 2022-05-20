import 'package:flutter/material.dart';
import 'package:stars_apps/common/theme/theme.dart';
import 'package:stars_apps/data/models/constellations.dart';
import 'package:stars_apps/ui/widgets/custom_scaffold.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen(this.constellations, {Key? key}) : super(key: key);
  final Constellations constellations;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    constellations.images,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    width: MediaQuery.of(context).size.width - 60,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                constellations.nameLatin,
                style: titleblackTextStyle.copyWith(fontSize: 22),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                constellations.nameEnglish,
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
              const SizedBox(
                height: 30,
              ),
              _informationParts(),
              const SizedBox(
                height: 30,
              ),
              _aboutParts(),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _informationParts() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
                color: blueColor),
            child: Text(
              'Information',
              style: whiteTextStyle.copyWith(fontSize: 16),
            ),
          ),
          Divider(
            height: 0,
            indent: 10,
            color: blueColor,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Category',
                      style: blackTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    Image.asset('assets/images/globe_icon.png', width: 30),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      constellations.category,
                      style: greyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Visibilty',
                      style: blackTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    Image.asset('assets/images/seasons_icon.PNG', width: 40),
                    const SizedBox(height: 2),
                    Text(
                      constellations.visibilty,
                      style: greyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Size',
                      style: blackTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    const Icon(
                      Icons.crop_free,
                      size: 40,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '${constellations.size} (Deg2)',
                      style: greyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _aboutParts() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
                color: orangeColor),
            child: Text(
              'About ${constellations.nameLatin}',
              style: whiteTextStyle.copyWith(fontSize: 16),
            ),
          ),
          Divider(
            height: 0,
            indent: 10,
            color: orangeColor,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            constellations.desc,
            style: greyTextStyle,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
