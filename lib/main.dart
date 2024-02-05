import 'dart:async';
// EDITED BY DP36423X
// SSL ANDROID
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:finance_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';

void main() {
  
  runApp(MainApp());
  // runApp(const MaterialApp(
  //   home: Text('arief rahman'),
  // ));
}

class MainApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
          builder: (context, child) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              getPages: Routes.route,
              initialRoute: '/splashscreen',
              // theme: ArjunaThemeData.mainTheme,
              // localizationsDelegates: [
              //   AppLocalizations.delegate,
              //   GlobalMaterialLocalizations.delegate,
              //   GlobalWidgetsLocalizations.delegate,
              //   GlobalCupertinoLocalizations.delegate
              // ],
              // supportedLocales: [
              //   Locale('en', 'US'),
              //   Locale('id', 'ID'),
              // ],
            );
          },
          designSize: Size(320, 600),
          minTextAdapt: true,
        );
}
}
