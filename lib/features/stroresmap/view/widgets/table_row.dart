import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

TableRow tableRow(
  String text2,
  String text3,
) {
  return TableRow(
    children: [
      SizedBox(
        height: 50,
        child: Center(
          child: Text(
            text2,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.black,
            ),
          ),
        ),
      ),
     InkWell(
            onTap: () => openDialPad(text3),
        child: SizedBox(
          height: 50,
          child: Center(
            child: Text(
              text3,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

TableRow tableRowWithLocation(String text2, String text3, {String? location}) {
  return TableRow(
    children: [
      SizedBox(
        height: 50,
        child: Center(
          child: Text(
            text2,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.black,
            ),
          ),
        ),
      ),
      InkWell(
            onTap: () => openDialPad(text3),
        child: SizedBox(
          height: 50,
          child: Center(
            child: Text(
              text3,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      location != null
          ? SizedBox(
              height: 50,
              child: Center(
                child: Text(
                  location,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          : SizedBox.shrink(),
    ],
  );
}

 openDialPad(
  String contact,
) async {
  final numbreOrString = RegExp(r'^[0-9]+$').hasMatch(contact);

  if (numbreOrString == true) {
    final Uri uri = Uri(scheme: 'tel', path: contact);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      print('can not launch this url');
    }
  } else {
    print('not a number');
  }
}
