import 'package:flutter/material.dart';
import 'package:shoe_ecommerce_app/helper/nike_shoe_data.dart';
import 'package:shoe_ecommerce_app/model/nike_shoe_model.dart';
import 'package:shoe_ecommerce_app/styling.dart';
import 'package:shoe_ecommerce_app/views/details/components/details.dart';
import 'package:shoe_ecommerce_app/widgets/appBar.dart';
import 'package:shoe_ecommerce_app/widgets/gradient_container.dart';
import 'package:shoe_ecommerce_app/widgets/nike_shoes.dart';
import 'package:shoe_ecommerce_app/widgets/rotate_shoe.dart';
import 'package:shoe_ecommerce_app/widgets/shoe_properties.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<NikeShoeModel> nikes = List<NikeShoeModel>();

  @override
  void initState() {
    nikes = getNikeShoes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(leading: 'menu.png'),
      body: Padding(
        padding: EdgeInsets.only(left: 5.0.w, top: 1.0.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _searchBar(),
              InkWell(
                onTap: () => Navigator.push(
                    context,

                    ///Page Transition to slow hero animation speed
                    PageRouteBuilder(
                        transitionDuration: Duration(seconds: 1),
                        pageBuilder: (_, __, ___) => Details())),
                child: Hero(
                  tag: 'nike',
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                        children:
                            List.generate(2, (index) => _blackNikeShoes())),
                  ),
                ),
              ),
              _onTrend(),

              /// BOTTOM SCREEN NIKE SHOES
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                ///// physics: NeverScrollableScrollPhysics(),
                child: Row(
                    children: List.generate(
                        nikes.length,
                        (index) => NikeShoeCard(
                              img: nikes[index].shoeImg,
                              name: nikes[index].shoeName,
                              price: nikes[index].amt,
                            ))),
              )
            ],
          ),
        ),
      ),
    );
  }

////// TOP NIKE SHOE BLACK
  Stack _blackNikeShoes() {
    return Stack(
      children: [
        Padding(
            padding: EdgeInsets.only(right: 10.0.w),
            child: Container(
              height: 42.0.h,
              width: 80.0.w,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              //color: Colors.green,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Stack(
                  children: [
                    GradientContainer(
                      height: 36.0.h,
                      width: 78.0.w,
                      child: ShoeProperties(
                          shadowPositionTop: 18.0.h,
                          shadowPositionLeft: 1.0.w,
                          showShoeName: true),
                    ),
                  ],
                ),
              ),
            )),
        RotatedNike(
          imagePositionTop: 1.5.h,
          imageTransformX: 0.01.w,
        )
      ],
    );
  }

/////// ON TREND TEXT AND PROGRESS/////
  Padding _onTrend() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 3.0.h, 5.0.w, 2.0.h),
      child: Row(
        children: [
          Text('ON TREND', style: AppTextStyle.bodyText),
          Spacer(),
          SizedBox(
            height: 1.0.h,
            child: Stack(
              children: [
                Center(
                    child: Container(
                        color: Colors.black, width: 35.0.w, height: 2)),
                Center(
                  child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          border: Border.all(color: AppColors.secondaryColor),
                          borderRadius: BorderRadius.circular(10)),
                      width: 13.0.w,
                      height: 0.7.h),
                ),
              ],
            ),
          ),
          SizedBox(width: 5.0.w),
          Text(
            '01',
            style:
                AppTextStyle.bodyText.copyWith(color: AppColors.primaryColor),
          ),
          Text(
            '/10',
            style: AppTextStyle.bodyText,
          )
        ],
      ),
    );
  }

  /////SEARCH BAR////////////////
  Padding _searchBar() {
    return Padding(
      padding: EdgeInsets.only(right: 5.0.w),
      child: Container(
        height: 6.0.h,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.0.w),
          child: Center(
            child: TextField(
              autofocus: false,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 2.0.h),
                  hintText: 'SEARCH',
                  hintStyle:
                      AppTextStyle.bodyText.copyWith(color: Colors.black45),
                  suffixIcon: Image.asset('assets/icons/search.png')),
            ),
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFE5D9EB),
                offset: Offset(5.0, 20.0),
                blurRadius: 50.0,
                //spreadRadius: 1.0
              ),
            ]),
      ),
    );
  }
}
