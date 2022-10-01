import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../view/pages/auth_screens/login_screen.dart';
import '../database/dio_helper.dart';
import '../database/end_points.dart';
import '../shared_pref/shared_pr.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  static RegisterCubit get(context) => BlocProvider.of(context);

  TextEditingController name = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController gender = TextEditingController();

  TextEditingController phone = TextEditingController();

  TextEditingController universityId = TextEditingController();

  TextEditingController gradeId = TextEditingController();


  void registerUser(context) async {
    var data = {
      'name': name.text, //name.text,
      'email': email.text,
      'password': password.text,
      'phoneNumber': phone.text,
      'gender': 'm',
      'roleId': 2,
      'universityId': 4,
      'gradeId': 3,
    };
    DioHelper.postData(url: registerEndPoint, data: data).then((value) {
      String email = value.data['email'];

      SharedPref().saveToken(email);

      print(value.data);
      print(value.statusCode);
      if (value.statusCode == 200) {
        print('gggghggggggggggggggggggggggggg');
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return LoginScreenPage();
        }));
      }
    }).catchError((onError) {
      print('==============================11111');

      print(onError);
      print('==============================2222');
    });
  }


}
