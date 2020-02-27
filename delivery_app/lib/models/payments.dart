import'package:flutter/material.dart';

class Category{
  final String type;
  final Color color;

  const Category({
    @required this.type,
    this.color = Colors.grey,
   });
}