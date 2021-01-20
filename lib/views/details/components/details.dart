import 'package:flutter/material.dart';
import 'package:shoe_ecommerce_app/styling.dart';
import 'package:shoe_ecommerce_app/views/details/components/select_color.dart';
import 'package:shoe_ecommerce_app/widgets/appBar.dart';
import 'package:shoe_ecommerce_app/widgets/gradient_container.dart';
import 'package:shoe_ecommerce_app/widgets/rotate_shoe.dart';
import 'package:shoe_ecommerce_app/widgets/shoe_properties.dart';
import 'package:sizer/sizer.dart';

class Details extends StatelessWidget {
  final String desc =
      "Utilising The Latest Innovations And Nike's ISPA Project Which Touts A Philosophy Of Improvise, Scavenge, Protect And Adapt Nike ISPA Air Max 720 Delivers Smooth Cushioning. It Features An Extra-Large Air Unit, Providing Support Along With Innovative Details Inspired By Modern Life In The City.Utilising The Latest Innovations And Nike's ISPA Project—Which Touts A Philosophy Of Improvise, Scavenge, Protect And Adapt—The Nike ISPA Air Max 720 Delivers Smooth Cushioning. It Features An Extra-Large Air Unit, Providing Support Along With Innovative Details Inspired By Modern Life In The City.";

  SizedBox _bodyUI() {
    return SizedBox(
      height: 35.0.h,
      width: 88.0.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.0.h, bottom: 0.5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'NIKE ISPA AIR MAX 720',
                  style: AppTextStyle.titleText,
                ),
                Row(
                  children: List.generate(
                      5, // generate 5 rating stars
                      (index) => index == 4
                          ? Image.asset('assets/icons/rating.png')
                          : Image.asset('assets/icons/rating_solid.png')),
                )
              ],
            ),
          ),
          Text(
            '\$184',
            style: AppTextStyle.heading,
          ),
          Padding(
            padding: EdgeInsets.only(top: .5.h, bottom: 2.0.h),
            child: Container(
                height: 9.0.h, child: Text(desc, style: AppTextStyle.descText)),
          ),
          Text(
            'COLORS',
            style: AppTextStyle.titleText,
          ),
          SizedBox(
            width: 65.0.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SelectColorWidget(color: Colors.black, isSelected: true),
                SelectColorWidget(color: AppColors.primaryColor),
                SelectColorWidget(color: Color(0xFFff5E3A)),
                SelectColorWidget(color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Hero _topUI() {
    return Hero(
      tag: 'nike',
      child: Container(
          height: 38.0.h,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Stack(
                  children: [
                    GradientContainer(
                        height: 32.0.h,
                        width: double.infinity,
                        child: ShoeProperties(
                          shadowPositionTop: 16.0.h,
                          shadowPositionLeft: 5.0.w,
                        )),
                  ],
                ),
              ),
              RotatedNike(
                imagePositionTop: 1.5.h,
                imageTransformX: 0.03.w,
              )
            ],
          )),
    );
  }

  Expanded bottomUI() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
          child: Center(
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buttons(
                        btnTxt: 'ADD TO CART',
                        btnIcon: 'addcart.png',
                        coloredBtn: false),
                    _buttons(
                        btnTxt: 'BUY NOW', btnIcon: 'pay.png', coloredBtn: true)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buttons({bool coloredBtn = false, String btnIcon, String btnTxt}) {
    return Center(
      child: Container(
        height: 7.0.h,
        width: 45.0.w,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            gradient: coloredBtn
                ? LinearGradient(
                    begin: Alignment(-1.0, .08),
                    end: Alignment(-.08, 3.0),
                    colors: [AppColors.secondaryColor, AppColors.primaryColor])
                : null,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/$btnIcon'),
            SizedBox(width: 2.0.w),
            Text(btnTxt,
                style: AppTextStyle.btnText.copyWith(
                    color: coloredBtn ? Colors.white : AppColors.primaryColor)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          appBar(leading: 'back.png', onPressed: () => Navigator.pop(context)),
      body: Column(
        children: [_topUI(), _bodyUI(), bottomUI()],
      ),
    );
  }
}
