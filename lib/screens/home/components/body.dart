import 'package:flutter/material.dart';
import 'package:furniture_ui_app/components/categories.dart';
import 'package:furniture_ui_app/components/title_text.dart';
import 'package:furniture_ui_app/models/categories.dart';
import 'package:furniture_ui_app/models/product.dart';
import 'package:furniture_ui_app/services/fetchCategories.dart';
import 'package:furniture_ui_app/services/fetchProducts.dart';
import 'package:furniture_ui_app/size_config.dart';

import 'recommand_products.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SafeArea(
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
                  : Center(child: Image.asset("assets/ripple.gif")),
            ),
            const Divider(height: 5),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: const TitleText(title: "Recommands for you"),
            ),
            FutureBuilder(
              future: fetchProducts(),
              builder: (context, snapshot) => snapshot.hasData
                  ? RecommandProducts(products: snapshot.data as List<Product>)
                  : Center(child: Image.asset("assets/ripple.gif")),
            ),
          ],
        ),
      ),
    );
  }
}
