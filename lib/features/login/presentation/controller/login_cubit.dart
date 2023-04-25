import 'dart:async';

import 'package:effa/core/utils/resources/app_strings.dart';
import 'package:effa/core/utils/resources/country_model.dart';
import 'package:effa/features/login/presentation/controller/login_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogInCubit extends Cubit<LogInStates> {
  LogInCubit() : super(LogInInitialState());

  static LogInCubit get(context) => BlocProvider.of(context);

  CountryModel dropDownSelectedValue = CountryModel(
    name: 'مصر',
    dialCode: '+20',
    flagUri: AppString.egyptPath,
  );

  void changeDropDownValue(CountryModel value) {
    dropDownSelectedValue = value;
    emit(ChangeDropDownValueState());
  }

  bool checkBoxValue = false;

  void changeCheckBoxValue(bool value){
    checkBoxValue = value;
    emit(ChangeCheckBoxValueState());
  }

}
