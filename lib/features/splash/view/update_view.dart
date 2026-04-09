import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class UpdateView extends StatelessWidget {
  const UpdateView({super.key});
  static const routeName = '/update_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(AppAssets.alert, width: 90, height: 90),
                const Padding(padding: EdgeInsets.only(bottom: 20)),
                Text('Update your\napplication to the\nlatest version',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(fontSize: 26, fontWeight: FontWeight.bold)),
                const Padding(padding: EdgeInsets.only(bottom: 10)),
                Text(
                    'A new version is available in the store,\nPlease update your app to use all\nof our amazing features.',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(fontSize: 16))
              ],
            ),
            Center(
              child: TextButton(
                onPressed: () async {
                  if (Platform.isAndroid) {
                    const androidUrl =
                        'market://details?id=com.starttech.mhgboutique';
                    const webUrl =
                        'https://play.google.com/store/apps/details?id=com.starttech.mhgboutique';

                    if (await canLaunch(androidUrl)) {
                      await launch(androidUrl);
                    } else if (await canLaunch(webUrl)) {
                      await launch(webUrl);
                    } else {
                      throw 'Could not launch $androidUrl or $webUrl';
                    }
                  } else if (Platform.isIOS) {
                    const iosUrl =
                        'https://apps.apple.com/ae/app/mhgboutique/id6463312590';

                    if (await canLaunch(iosUrl)) {
                      await launch(iosUrl);
                    } else {
                      throw 'Could not launch $iosUrl';
                    }
                  } else {
                    throw UnsupportedError('Unsupported platform');
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(bottom: 25),
                  decoration: BoxDecoration(
                      color: AppColors.green,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text('Update now',
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontSize: 18, color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
