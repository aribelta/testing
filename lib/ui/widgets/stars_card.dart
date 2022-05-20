import 'package:flutter/material.dart';
import 'package:stars_apps/common/theme/theme.dart';
import 'package:stars_apps/data/models/stars.dart';

class StarsCard extends StatelessWidget {
  const StarsCard({Key? key}) : super(key: key);

  // NOTE : Dialog yang menjelaskan bahwa fitur masih dalam tahap pengembangan
  Future<dynamic> _showComingsoonFeature(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Coming Soon!'),
          content: const Text('This feature will be coming soon!'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          final Stars stars = starsList[index];
          return InkWell(
            onTap: () {
              _showComingsoonFeature(context);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 120,
                height: 150,
                color: Colors.black,
                child: Column(
                  children: [
                    Image.network(
                      stars.image,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      stars.name,
                      style: whiteTextStyle.copyWith(fontSize: 16),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          width: 20,
        ),
        itemCount: starsList.length,
      ),
    );
  }
}
