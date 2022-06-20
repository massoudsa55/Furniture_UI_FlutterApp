import 'package:flutter/material.dart';
import 'package:furniture_ui_app/size_config.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    double defaulSize = SizeConfig.defaultSize;
    return Text(
      title,
      style: TextStyle(
        fontSize: defaulSize * 1.6,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
