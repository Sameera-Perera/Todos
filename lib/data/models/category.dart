import 'package:flutter/material.dart';

class Category {
  final int id;
  final String icon;
  final String description;
  final Color color;

  Category(
      {required this.id,
      required this.icon,
      required this.color,
      required this.description});
}
