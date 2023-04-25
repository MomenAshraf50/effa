import 'package:effa/core/di/injection.dart';
import 'package:effa/core/utils/resources/app_strings.dart';
import 'package:effa/core/utils/resources/colors_manager.dart';
import 'package:effa/core/utils/resources/constants_manager.dart';
import 'package:effa/core/utils/resources/country_model.dart';
import 'package:effa/core/utils/resources/extensions_manager.dart';
import 'package:effa/core/utils/widgets/default_text.dart';
import 'package:effa/features/login/presentation/components/drop_down_item_builder.dart';
import 'package:effa/features/login/presentation/controller/login_cubit.dart';
import 'package:effa/features/login/presentation/controller/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropDownBuilder extends StatelessWidget {
   DropDownBuilder({Key? key,required this.controller}) : super(key: key);

  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    List<CountryModel> countries = [
      CountryModel(name: 'مصر', dialCode: '+20', flagUri: AppString.egyptPath),
      CountryModel(
          name: 'المملكة العربية السعودية',
          dialCode: '+966',
          flagUri: AppString.saudiPath),
      CountryModel(
          name: 'الكويت', dialCode: '+965', flagUri: AppString.kuwaitPath),
      CountryModel(
          name: 'الإمارات', dialCode: '+971', flagUri: AppString.emaritsPath),
    ];

    return BlocBuilder<LogInCubit, LogInStates>(
      builder: (context, state) {
        return Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.rSp)),
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 10.rSp, horizontal: 20.rSp),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: DropdownButton<CountryModel>(
                    underline: Container(),
                    isExpanded: true,
                    hint: DropDownItemBuilder(
                      countryModel: sl<LogInCubit>().dropDownSelectedValue,
                    ),
                    onChanged: (value) {
                      sl<LogInCubit>().changeDropDownValue(value!);
                    },
                    items: [
                      DropdownMenuItem(
                        value: countries[0],
                        child: DropDownItemBuilder(
                          countryModel: countries[0],
                        ),
                      ),
                      DropdownMenuItem(
                        value: countries[1],
                        child: DropDownItemBuilder(
                          countryModel: countries[1],
                        ),
                      ),
                      DropdownMenuItem(
                        value: countries[2],
                        child: DropDownItemBuilder(
                          countryModel: countries[2],
                        ),
                      ),
                      DropdownMenuItem(
                        value: countries[3],
                        child: DropDownItemBuilder(
                          countryModel: countries[3],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 0.1.h,
                color: ColorsManager.grey,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 15.rSp, vertical: 10.rSp),
                child: Row(
                  children: [
                    DefaultText(
                      text: sl<LogInCubit>().dropDownSelectedValue.dialCode,
                      fontSize: 18.rSp,
                    ),
                    horizontalSpace(2.w),
                    Container(
                      height: 5.h,
                      width: 0.5.w,
                      color: ColorsManager.grey,
                    ),
                    horizontalSpace(4.w),
                    Expanded(
                      child: TextFormField(
                        validator: (value){
                          if(value!.isEmpty){
                            return 'من فضلك قم بإدخال رقم الهاتف';
                          }
                          return null;
                        },
                        controller: controller,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          hintText: '1234567890',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
