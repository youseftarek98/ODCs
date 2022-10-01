import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../constant.dart';
import '../../model/midterms_model.dart';
import '../database/dio_helper.dart';
import '../database/end_points.dart';

part 'midterms_screen_state.dart';

class MidtermsScreenCubit extends Cubit<MidtermsScreenState> {
  MidtermsScreenCubit() : super(MidtermsScreenInitial());

  static MidtermsScreenCubit get(context) => BlocProvider.of(context);

  MidtermsModel? midtermsModel ;

  void getDataLectures() {
    DioHelper.getData(url: examsEndPoint, token: token).then((value) {
      midtermsModel = MidtermsModel.fromJson(value.data);
      print(midtermsModel!.code);
      emit(MidtermsScreenStored());
    });
  }


}
