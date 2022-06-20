import 'package:flutter/material.dart';
import 'package:furniture_ui_app/components/title_text.dart';
import 'package:furniture_ui_app/models/categories.dart';
import 'package:furniture_ui_app/services/fetchCategories.dart';
import 'package:furniture_ui_app/size_config.dart';

import 'category_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: const TitleText(title: "Browse by categories"),
          ),
          FutureBuilder(
            future: fetchCategories(),
            builder: (context, snapshot) => snapshot.hasData
                ? Categories(categories: snapshot.data as List<Category>)
                : const CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}

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
