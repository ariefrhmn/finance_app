import 'package:get/get.dart';
import 'package:finance_app/screen/splash_screen/splash_screen.dart';
import 'package:finance_app/screen/home/home.dart';

class Routes {
  static final route = [
    GetPage(name: '/splashscreen', page: () => SplashScreen()),
    GetPage(
      name: '/home',
      page: () => Home(),
    ),

  ];
}