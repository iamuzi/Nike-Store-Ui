import 'package:flutter/material.dart';
import 'package:shoe_ecommerce_app/styling.dart';
import 'package:sizer/sizer.dart';

class ShoeProperties extends StatelessWidget {
  const ShoeProperties({
    Key key,
    this.showShoeName = false,
    @required this.shadowPositionTop,
    @required this.shadowPositionLeft,
  }) : super(key: key);

  final bool showShoeName;
  final double shadowPositionTop;
  final double shadowPositionLeft;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/spa.png',
        ),
        Positioned(
            top: 3.0.h,
            right: 5.0.w,
            child: Image.asset('assets/icons/favorite.png')),
        showShoeName
            ? Positioned(
                bottom: 3.0.h,
                left: 5.0.w,
                child: Material(
                  color: Colors.transparent,
                  child: Text('NIKE ISPA AIR \nMAX 720 \n\n\$184',
                      style:
                          AppTextStyle.bodyText.copyWith(color: Colors.white)),
                ),
              )
            : SizedBox(),
        Positioned(
          top: shadowPositionTop,
          left: shadowPositionLeft,
          child: Transform.rotate(
              alignment: Alignment.center,
              angle: -100,
              child: Container(
                height: 8.0.h,
                width: 60.0.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 50,
                        //spreadRadius: 0.0,
                        //offset: Offset(1, 0.0)
                      )
                    ]),
              )),
        ),
      ],
    );
  }
}
