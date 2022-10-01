import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_taxi/model/sections_model.dart';
import 'package:meta/meta.dart';

import '../../constant.dart';
import '../database/dio_helper.dart';
import '../database/end_points.dart';

part 'sections_screen_state.dart';

class SectionsScreenCubit extends Cubit<SectionsScreenState> {
  SectionsScreenCubit() : super(SectionsScreenInitial());

  static SectionsScreenCubit get(context) => BlocProvider.of(context);

  SectionsModel? sectionsModel ;

  void getDataLectures() {
    DioHelper.getData(url: sectionEndPoint, token: token).then((value) {
      sectionsModel = SectionsModel.fromJson(value.data);
      print(sectionsModel!.code);
      emit(SectionsScreenStored());
    });
  }

}
