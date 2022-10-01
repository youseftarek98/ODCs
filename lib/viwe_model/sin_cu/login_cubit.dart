

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_taxi/viwe_model/database/end_points.dart';
import 'package:meta/meta.dart';

import '../../view/pages/intro_pag.dart';
import '../database/dio_helper.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  void loginUser(context) async {
    var data = {
      'email': email.text,
      'password': password.text,
    };
    DioHelper.postData(url: loginEndPoint, data: data).then((value) {
      print(value.data);
      print(value.statusCode);
     if(value.statusCode == 200 ){
print('gggg') ;
       Navigator.push(context, MaterialPageRoute(
           builder: (context) {
            return  IntroPage() ;
           }  )) ;
     }

    }).catchError((onError) {
      print(onError);
    });
  }
}
