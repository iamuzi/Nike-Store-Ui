import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoe_ecommerce_app/views/home/home.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return LayoutBuilder(builder: (context, constraint) {
      return OrientationBuilder(
        builder: (context, orientation) {
          SizerUtil().init(constraint, orientation);
          return MaterialApp(
            title: 'Shoe E-Commerce',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              brightness: Brightness.light,
              fontFamily: 'BigNoodle',
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: Home(),
          );
        },
      );
    });
  }
}
