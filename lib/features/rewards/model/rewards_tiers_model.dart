import 'package:flutter/material.dart';

class TiersModel {
  final int id;
  final String name;
  final String description;
  final String image;
  final bool isLocked;
  final Color color;
  final Color textColor;

  TiersModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.image,
      required this.isLocked,
      required this.color,
      required this.textColor});
}
