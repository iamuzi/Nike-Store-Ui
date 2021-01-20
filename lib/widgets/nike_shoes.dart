import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:shoe_ecommerce_app/styling.dart';
import 'package:sizer/sizer.dart';

class NikeShoeCard extends StatelessWidget {
  final String name;
  final String img;
  final String price;

  const NikeShoeCard({Key key, this.name, this.img, this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.0.h),
      child: Container(
        height: 24.5.h,
        width: 48.0.w,
        child: Stack(
          children: [
            Positioned(
              top: 2.5.h,
              child: Container(
                height: 18.0.h,
                width: 39.0.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFFD9CEDF),
                          offset: Offset(0.0, 10.0),
                          blurRadius: 30.0,
                          spreadRadius: 1.0),
                    ]),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5.0.w, 0.0, 3.0.w, 2.0.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          price,
                          style: AppTextStyle.bodyText
                              .copyWith(color: AppColors.primaryColor),
                        ),
                        Image.asset('assets/icons/fav.png')
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 3.5.h,
              child: Transform.rotate(
                alignment: Alignment(0.0, -0.2),
                angle: -math.pi / 5.5,
                child: Image.asset(
                  img,
                  height: 10.0.h,
                ),
              ),
            ),
            Transform.rotate(
                alignment: Alignment(2.7, -7.5),
                angle: -math.pi / 5.5,
                child: Container(
                  height: 3.0.h,
                  width: 29.0.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 20,
                          //spreadRadius: 0.0,
                          //offset: Offset(1, 0.0)
                        )
                      ]),
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(right: 7.5.w),
                child: Text(name, style: AppTextStyle.bodyText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
