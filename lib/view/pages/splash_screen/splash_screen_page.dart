import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../component/custom_auth/custom_text_title.dart';
import '../auth_screens/register_screen.dart';

class SplashScreens extends StatelessWidget {
  const SplashScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Container(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CustomText(
                        fontSize: 25,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        labelText: 'Orange',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      CustomText(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        labelText: 'Digital Center',
                      ),
                    ],
                  ),
                  const SizedBox(height: 45,) ,
                  LinearPercentIndicator(
                                width: size.width * 0.85,
                                lineHeight: 10,
                                backgroundColor: Colors.white,
                                progressColor: Colors.deepOrange,
                                percent: 1,
                                alignment: MainAxisAlignment.center,
                                animation: true,
                                animationDuration: 2000,
                                onAnimationEnd: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return const RegisterScreenPage1();
                                      }));
                                  print("Linear Animation finished");
                                },
                                barRadius: const Radius.circular(20),
                              ),
                ],
              ),
            ),
          ),
        ),
      )
      ;
  }
}
