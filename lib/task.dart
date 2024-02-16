import 'package:flutter/material.dart';

class CategoryList {
  final num categoryId;
  final String taskNumber;
  final String categoryName;
  final double percent;
  final Color color;


  CategoryList(this.categoryId, this.categoryName, this.percent, this.color,
      this.taskNumber);
}

final List<CategoryList> categories = [
  CategoryList(1, "Business", 0.5, Colors.pink, "30"),
  CategoryList(2, "Personal", 0.2, Colors.blue, "50"),
  CategoryList(3, "Shopping", 0.3, Colors.green, "20"),
  CategoryList(4, "Food", 0.8, Colors.yellow, "10"),
];