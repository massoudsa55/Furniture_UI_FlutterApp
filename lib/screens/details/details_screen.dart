import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_ui_app/constants.dart';
import 'package:furniture_ui_app/models/product.dart';
import 'package:furniture_ui_app/size_config.dart';

import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: fSecondaryColor,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/arrow-long-left.svg",
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/bag.svg",
          ),
          onPressed: () {},
        ),
        SizedBox(width: SizeConfig.defaultSize),
      ],
    );
  }
}
