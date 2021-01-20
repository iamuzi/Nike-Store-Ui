import 'package:flutter/material.dart';
import 'package:shoe_ecommerce_app/styling.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  GradientContainer({Key key, this.height, this.width, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          boxShadow: [
            // BoxShadow(
            //     color: Colors.black,
            //     //color: Color(0xFFCDB1DA),
            //     offset: Offset(0.0, 40.0),
            //     blurRadius: 30.0,
            //     spreadRadius: 0.0
            //     ),
          ],
          gradient: LinearGradient(
              begin: Alignment(-1.0, .08),
              end: Alignment(-.08, 3.0),
              colors: [AppColors.secondaryColor, AppColors.primaryColor]),
          borderRadius: BorderRadius.circular(20)),
      child: child,
    );
  }
}
