import 'package:flutter/material.dart';
import 'package:furniture_ui_app/models/categories.dart';
import 'package:furniture_ui_app/models/product.dart';
import 'package:furniture_ui_app/screens/details/details_screen.dart';
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
        (index) => GestureDetector(
          child: CategoryCard(category: categories[index]),
          onTap: () {},
        ),
      )),
    );
  }
}
