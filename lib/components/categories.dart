import 'package:flutter/material.dart';
import 'package:furniture_ui_app/models/categories.dart';
import 'package:furniture_ui_app/screens/home/components/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
    required this.categories,
  }) : super(key: key);

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
        categories.length,
        (index) => CategoryCard(category: categories[index]),
      )),
    );
  }
}
