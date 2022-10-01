import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import '../data_base/data_base_sql.dart';

part 'support_bloc_screen_state.dart';

class SupportBlocScreenCubit extends Cubit<SupportBlocScreenState> {
  SupportBlocScreenCubit() : super(SupportBlocScreenInitial());
  static SupportBlocScreenCubit get(context) => BlocProvider.of(context) ;

  SqlDb sqlDb = SqlDb() ;
  TextEditingController note = TextEditingController() ;
  TextEditingController title = TextEditingController() ;
  TextEditingController descruption = TextEditingController() ;

 Future insertsData()async{
   int response = await sqlDb.insertData(
       "INSERT INTO 'NOTES' ('note') VALUES ('$title')");
    emit(SupportBlocScreenPage());
    return response ;

  }


}
