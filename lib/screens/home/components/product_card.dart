import 'package:flutter/material.dart';
import 'package:furniture_ui_app/components/title_text.dart';
import 'package:furniture_ui_app/constants.dart';
import 'package:furniture_ui_app/models/product.dart';
import 'package:furniture_ui_app/size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Container(
      width: defaultSize * 14.5,
      decoration: BoxDecoration(
        color: fSecondaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: AspectRatio(
        aspectRatio: 0.693,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Hero(
                tag: product.id,
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/spinner.gif",
                  image: product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultSize),
              child: TitleText(title: product.title),
            ),
            SizedBox(height: defaultSize / 2),
            Text("\$${product.price}"),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
