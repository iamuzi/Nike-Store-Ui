import 'package:flutter/material.dart';
import 'package:shoe_ecommerce_app/widgets/gradient_container.dart';
import 'package:shoe_ecommerce_app/widgets/rotate_shoe.dart';
import 'package:shoe_ecommerce_app/widgets/shoe_properties.dart';
import 'package:sizer/sizer.dart';

class ShoeCard extends StatelessWidget {
  final double gradientContainerHeight;
  final double gradientContainerWidth;
  final bool showShoeName;
  final double shadowPositionTop;
  final double shadowPositionLeft;
  final double imagePositionTop;
  final double imageTransformX;

  ShoeCard(
      {Key key,
      this.gradientContainerHeight,
      this.gradientContainerWidth,
      this.imagePositionTop,
      this.imageTransformX,
      this.shadowPositionLeft,
      this.shadowPositionTop,
      this.showShoeName = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
              padding: EdgeInsets.only(right: 10.0.w),
              child: Stack(
                children: [
                  GradientContainer(
                    height: gradientContainerHeight,
                    width: gradientContainerWidth,
                    child: ShoeProperties(
                        showShoeName: showShoeName,
                        shadowPositionTop: shadowPositionTop,
                        shadowPositionLeft: shadowPositionLeft),
                  ),
                ],
              )),
        ),
        RotatedNike(
            imagePositionTop: imagePositionTop,
            imageTransformX: imageTransformX),
      ],
    );
  }
}
