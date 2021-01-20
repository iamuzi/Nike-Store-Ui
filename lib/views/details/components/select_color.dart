import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SelectColorWidget extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const SelectColorWidget({Key key, this.isSelected = false, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 1.0.h),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xFFDCCCE4),
                offset: Offset(0.0, 15.0),
                blurRadius: 30.0,
                //spreadRadius: 1.0
              ),
            ],
            shape: BoxShape.circle,
            border:
                isSelected ? Border.all(color: Colors.white, width: 5) : null),
        child: CircleAvatar(
          backgroundColor: color,
        ),
      ),
    );
  }
}
