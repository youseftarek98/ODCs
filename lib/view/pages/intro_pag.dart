import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../viwe_model/bloc_nav/nav_bar_bloc_cubit.dart';

class IntroPage extends StatelessWidget {
   IntroPage({Key? key}) : super(key: key);

  bool loding = true ;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarBlocCubit(),
      child: BlocConsumer<NavBarBlocCubit, NavBarBlocState>(
        listener: (context, state) {},
        builder: (context, state) {
          NavBarBlocCubit myNavBar = NavBarBlocCubit.get(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home:  Scaffold(
              body: myNavBar.pages[myNavBar.selectedIndex],
              bottomNavigationBar: GNav(
                  backgroundColor: Colors.white,
                  activeColor: Colors.deepOrangeAccent,
                  tabBackgroundColor: Colors.grey.shade200,
                  onTabChange: myNavBar.onItemTab,
                  selectedIndex: myNavBar.selectedIndex,
                  gap: 17,
                  padding: const EdgeInsets.all(15),
                  tabs: const [
                    GButton(
                      icon: Icons.home_outlined,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.newspaper_outlined,
                      text: 'News',
                    ),
                    GButton(
                      icon: Icons.settings_outlined,
                      text: 'Settings',
                    ),
                  ]),
            ),
          );
        },
      ),
    );
  }
}
