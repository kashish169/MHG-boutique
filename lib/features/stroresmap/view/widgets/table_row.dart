import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/checkout/views/pages/checkout_page.dart';

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
      SizedBox(
        height: 50,
        child: InkWell(
          onTap: () {
            if (text3.contains('/') == true) {
              Get.defaultDialog(
                title: "Choose a Phone number to call",
                backgroundColor: Colors.white,
                titleStyle: const TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                ),
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () => openDialPad(
                          text3.contains('/') == true
                              ? text3
                                  .substring(0, text3.indexOf('/'))
                                  .replaceAll(' ', '')
                              : text3.replaceAll(' ', ''),
                        ),
                        child: SizedBox(
                          height: 30,
                          child: Text(
                            text3.contains('/') == true
                                ? text3
                                    .substring(0, text3.indexOf('/'))
                                    .replaceAll(' ', '')
                                : text3.replaceAll(' ', ''),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    divider(),
                    text3.contains('/') == true
                        ? Center(
                            child: InkWell(
                              onTap: () => openDialPad(text3
                                  .substring(text3.indexOf('/') + 1)
                                  .replaceAll(' ', '')),
                              child: SizedBox(
                                height: 30,
                                child: Text(
                                  text3
                                      .substring(text3.indexOf('/') + 1)
                                      .replaceAll(' ', ''),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : SizedBox(
                            height: 0,
                          ),
                  ],
                ),
                radius: 10,
              );
            } else {
              openDialPad(text3);
            }
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text3.contains('/') == true
                      ? text3.substring(0, text3.indexOf('/'))
                      : text3,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
                text3.contains('/') == true
                    ? Text(
                        text3.substring(text3.indexOf('/') + 1),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      )
                    : SizedBox(
                        height: 0,
                      ),
              ],
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
      SizedBox(
        height: 50,
        child: InkWell(
          onTap: () {
            if (text3.contains('/') == true) {
              Get.defaultDialog(
                title: "Please Choose a Number to Dial with",
                backgroundColor: Colors.white,
                titleStyle: const TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                ),
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () => openDialPad(
                          text3.contains('/') == true
                              ? text3
                                  .substring(0, text3.indexOf('/'))
                                  .replaceAll(' ', '')
                              : text3.replaceAll(' ', ''),
                        ),
                        child: SizedBox(
                          height: 30,
                          child: Text(
                            text3.contains('/') == true
                                ? text3
                                    .substring(0, text3.indexOf('/'))
                                    .replaceAll(' ', '')
                                : text3.replaceAll(' ', ''),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    divider(),
                    text3.contains('/') == true
                        ? Center(
                            child: InkWell(
                              onTap: () => openDialPad(text3
                                  .substring(text3.indexOf('/') + 1)
                                  .replaceAll(' ', '')),
                              child: SizedBox(
                                height: 30,
                                child: Text(
                                  text3
                                      .substring(text3.indexOf('/') + 1)
                                      .replaceAll(' ', ''),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : SizedBox(
                            height: 0,
                          ),
                  ],
                ),
                radius: 10,
              );
            } else {
              openDialPad(text3);
            }
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text3.contains('/') == true
                      ? text3.substring(0, text3.indexOf('/'))
                      : text3,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
                text3.contains('/') == true
                    ? Text(
                        text3.substring(text3.indexOf('/') + 1),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      )
                    : SizedBox(
                        height: 0,
                      ),
              ],
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
  final numbreOrString = RegExp('[a-zA-Z]').hasMatch(contact);
  print(contact.replaceAll(' ', ''));
  if (numbreOrString == false && contact.isEmpty == false) {
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
