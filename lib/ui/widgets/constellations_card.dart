import 'package:flutter/material.dart';
import 'package:stars_apps/common/routes/route.dart';
import 'package:stars_apps/common/theme/theme.dart';
import 'package:stars_apps/data/models/constellations.dart';

class ConstellationsCard extends StatelessWidget {
  const ConstellationsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 1.4 - 30,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            final Constellations constellations = constellationsList[index];
            return Card(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, detailRoute,
                      arguments: constellations);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        ),
                        child: Image.network(
                          constellations.images,
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) return child;
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                          fit: BoxFit.cover,
                          height: 90,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              constellations.nameLatin,
                              style: titleblackTextStyle.copyWith(fontSize: 18),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              constellations.nameEnglish,
                              style: greyTextStyle.copyWith(fontSize: 16),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Size: ${constellations.size} (Deg2)',
                              style: greyTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Icon(
                      Icons.navigate_next,
                      color: greyColor,
                    ),
                    const SizedBox(
                      width: 5,
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
                height: 10,
              ),
          itemCount: constellationsList.length),
    );
  }
}
