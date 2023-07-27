import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

TableRow tableRow( String text2, String text3,) {
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
        child: Center(
          child: InkWell( onTap: () => openDialPad(text3 , true),
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


TableRow tableRowWithLocation( String text2, String text3, {String? location}) {
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
        child: Center(
          child: InkWell( onTap: () => openDialPad(text3 , true),
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
      location != null ?   SizedBox(
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
        ):SizedBox.shrink(),
    ],
  );
}




Future<void> openDialPad(String contact, bool direct) async {
  final numbreOrString = RegExp(r'^[0-9]+$').hasMatch(contact);

    if (direct == true && numbreOrString == true) {
      bool? res = await FlutterPhoneDirectCaller.callNumber(contact);
  } else {
      String telScheme = 'tel:$contact';
 
      if (await canLaunch(telScheme)) {
        await launch(telScheme);
      } else {
        throw 'Could not launch $telScheme';
      }
    }
  }