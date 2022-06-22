import 'package:flutter/material.dart';
import 'package:furniture_ui_app/components/title_text.dart';
import 'package:furniture_ui_app/constants.dart';
import 'package:furniture_ui_app/models/product.dart';
import 'package:furniture_ui_app/size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Container(
      constraints: BoxConstraints(minHeight: defaultSize * 44),
      padding: EdgeInsets.only(
        top: defaultSize * 9,
        left: defaultSize * 2,
        right: defaultSize * 2,
      ),
      //height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(defaultSize * 1.2),
          topRight: Radius.circular(defaultSize * 1.2),
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleText(title: product.subTitle),
            SizedBox(height: defaultSize * 3),
            Text(
              product.description,
              style: TextStyle(
                color: fTextColor.withOpacity(0.7),
                height: 1.5,
              ),
            ),
            SizedBox(height: defaultSize * 3),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: press(),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    padding: EdgeInsets.all(defaultSize * 1.5),
                    backgroundColor: fPrimaryColor,
                  ),                  
                  child: Text(
                    "Add to cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: defaultSize * 1.6,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
