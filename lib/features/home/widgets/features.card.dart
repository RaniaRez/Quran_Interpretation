import 'package:app/core/const.dart';
import 'package:app/core/extension.dart';
import 'package:flutter/material.dart';

class FeaturesCard extends StatelessWidget {
  const FeaturesCard(
      {super.key,
      required this.width,
      required this.height,
      required this.title,
      required this.backgroundImage});
  final double width;
  final double height;
  final String title;
  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(kSpacingX2),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
          colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.darken),
        ),
        borderRadius: BorderRadius.circular(kSpacingX2),
      ),
      child: Text(
        title.translate(context),
        maxLines: 3,
        style: context.textTheme.headlineMedium,
      ),
    );
  }
}
