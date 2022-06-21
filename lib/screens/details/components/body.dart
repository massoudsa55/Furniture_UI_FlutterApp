import 'package:flutter/material.dart';
import 'package:furniture_ui_app/models/product.dart';
import 'package:furniture_ui_app/size_config.dart';

import 'product_decription.dart';
import 'product_info.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: SizeConfig.orientation == Orientation.landscape
            ? SizeConfig.screenHeight * 2
            : SizeConfig.screenHeight - AppBar().preferredSize.height,
        child: Stack(
          children: [
            ProductInfo(product: product),
            Positioned(
              top: defaultSize * 37.5,
              left: 0,
              right: 0,
              child: ProductDescription(product: product, press: () {}),
            ),
            Positioned(
              top: defaultSize * 9.5,
              right: -defaultSize * 3.5,
              child: Hero(
                tag: product.id,
                child: Image.network(
                  product.image,
                  fit: BoxFit.fill,
                  height: defaultSize * 37.8,
                  width: defaultSize * 36.4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
