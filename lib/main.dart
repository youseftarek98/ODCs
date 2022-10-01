import 'package:flutter/material.dart';
import 'package:green_taxi/view/pages/auth_screens/register_screen.dart';
import 'package:green_taxi/view/pages/intro_pag.dart';
import 'package:green_taxi/view/pages/news_screen.dart';
import 'package:green_taxi/view/pages/splash_screen/splash_screen_page.dart';
import 'package:green_taxi/viwe_model/database/dio_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefs;

void main() async {
  await DioHelper.init();
  WidgetsFlutterBinding.ensureInitialized();
  // prefs = await SharedPreferences.getInstance();

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'ODc',
    home: MyApp(),
  ));

}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    SplashScreens() ;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return IntroPage();
  }
}
