import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RotatedNike extends StatelessWidget {
  const RotatedNike({
    Key key,
    @required this.imagePositionTop,
    @required this.imageTransformX,
  }) : super(key: key);

  final double imagePositionTop;
  final double imageTransformX;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: imagePositionTop,
      child: Transform(
        alignment: Alignment(imageTransformX, 0),
        transform: Matrix4.rotationY(math.pi),
        child: Transform.rotate(
          angle: -math.pi / 5.5,
          child: Image.asset(
            'assets/images/nikeBlack.png',
            //height: 240,
            height: 28.0.h,
          ),
        ),
      ),
    );
  }
}
