import 'package:flutter/material.dart';
import 'package:stars_apps/common/theme/theme.dart';
import 'package:stars_apps/data/models/url.dart';

import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  _launchUrl(String url) async {
    if (await canLaunch(url)) {
      launch(url);
    } else {
      launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'About Us',
                        style: titleblackTextStyle.copyWith(fontSize: 24),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
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
                        height: 30,
                      ),
                      Text(
                        'This app was created to complete submission for the class "Learn to Create Flutter Apps" at the Dicoding Academy. Name is Planetarian application, this application is to display some of the stars and constellations that exist in the universe.\n',
                        style: greyTextStyle,
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        'The appearance of this application was developed from several UI designs on the internet, sources of inspiration:',
                        style: greyTextStyle,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () => _launchUrl(UrlName.behance()),
                                  child: Text(
                                    UrlName.behance(),
                                    style: blueTextStyle,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                InkWell(
                                  onTap: () => _launchUrl(UrlName.dribbble()),
                                  child: Text(
                                    UrlName.dribbble(),
                                    style: blueTextStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () => _launchUrl(UrlName.uplabs()),
                                  child: Text(
                                    UrlName.uplabs(),
                                    style: blueTextStyle,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                InkWell(
                                  onTap: () => _launchUrl(UrlName.google()),
                                  child: Text(
                                    UrlName.google(),
                                    style: blueTextStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'While the content of this application retrieves data from several websites on the internet, here are some of those websites:',
                        style: greyTextStyle,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () => _launchUrl(UrlName.wikipedia()),
                                child: Text(
                                  UrlName.wikipedia(),
                                  style: blueTextStyle,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              InkWell(
                                onTap: () =>
                                    _launchUrl(UrlName.starregistration()),
                                child: Text(
                                  UrlName.starregistration(),
                                  style: blueTextStyle,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              InkWell(
                                onTap: () => _launchUrl(UrlName.astroWisc()),
                                child: Text(
                                  UrlName.astroWisc(),
                                  style: blueTextStyle,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Note :\nThis app is only for mobile users',
                        style: titleblackTextStyle.copyWith(
                            color: Colors.red.shade400),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
                  child: IconButton(
                    iconSize: 30,
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.close_outlined,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
