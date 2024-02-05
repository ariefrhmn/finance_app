import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safe_device/safe_device.dart';

import '../../util/screen_size.dart';

class SplashScreen extends StatefulWidget {
  final Color backgroundColor = Colors.white;
  final TextStyle styleTextUnderTheLoader = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashDelay = 4;

  @override
  void initState() {
    print('initState1');
    super.initState();
    print('initState2');
    _loadWidget();

  }

  _loadWidget() async {
    print('_loadWidget');

    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    print('navigationPage');
    Navigator.pushNamedAndRemoveUntil(context, "/home", (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(320, 568), minTextAdapt: true);
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 33, 246, 254),
        height: ScreenSize.screenHeight(context),
        width: double.infinity,
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Text("Finance App"),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Text("v0.0.1"),
                )
              )
            ])
          )
      )
      );
  }
}