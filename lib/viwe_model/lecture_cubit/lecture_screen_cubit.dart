import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_taxi/viwe_model/database/dio_helper.dart';
import 'package:green_taxi/viwe_model/database/end_points.dart';
import 'package:meta/meta.dart';

import '../../constant.dart';
import '../../model/lecture_model.dart';

part 'lecture_screen_state.dart';

class LectureScreenCubit extends Cubit<LectureScreenState> {
  LectureScreenCubit() : super(LectureScreenInitial());

  static LectureScreenCubit get(context) => BlocProvider.of(context);

  LectureModel? lectureModel;

  void getDataLectures() {
    DioHelper.getData(url: userLecturesEndPoint, token: token).then((value) {
      lectureModel = LectureModel.fromJson(value.data);
      print(lectureModel!.code);
      emit(LectureDataStored());
    });
  }
}
