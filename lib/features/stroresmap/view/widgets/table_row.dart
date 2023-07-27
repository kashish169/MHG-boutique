import 'package:flutter/material.dart';

TableRow tableRow(String text1, String text2, String text3, {String? location}) {
  return TableRow(
    children: [
      SizedBox(
        height: 50,
        child: Center(
          child: Text(
            text1,
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
    
    ],
  );
}


TableRow tableRowWithLocation(String text1, String text2, String text3, {String? location}) {
  return TableRow(
    children: [
      SizedBox(
        height: 50,
        child: Center(
          child: Text(
            text1,
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
