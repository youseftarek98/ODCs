import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

import '../../view/pages/home_screen.dart';
import '../../view/pages/lectures_screen.dart';
import '../../view/pages/news_details.dart';
import '../../view/pages/news_screen.dart';
import '../../view/pages/settings_screen.dart';

part 'nav_bar_bloc_state.dart';

class NavBarBlocCubit extends Cubit<NavBarBlocState> {
  NavBarBlocCubit() : super(NavBarBlocInitial());

  static NavBarBlocCubit get(context) => BlocProvider.of(context);

  int selectedIndex = 0;

  onItemTab(int index) {
    selectedIndex = index;
    emit(NavBarGoToScreen());
  }

  List<Widget> pages = const [
   // LecturesScreens() ,
    HomeScreen(),
    NewsScreen(),
    SettingsScreen(),
  ];
}
