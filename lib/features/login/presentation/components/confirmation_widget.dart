import 'package:effa/core/di/injection.dart';
import 'package:effa/core/utils/resources/app_strings.dart';
import 'package:effa/core/utils/resources/colors_manager.dart';
import 'package:effa/core/utils/resources/constants_manager.dart';
import 'package:effa/core/utils/resources/extensions_manager.dart';
import 'package:effa/core/utils/widgets/default_text.dart';
import 'package:effa/features/login/presentation/controller/login_cubit.dart';
import 'package:effa/features/login/presentation/controller/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmationWidget extends StatelessWidget {
  const ConfirmationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        children: [
          BlocBuilder<LogInCubit, LogInStates>(
            builder: (context, state) {
              return Checkbox(
                value: sl<LogInCubit>().checkBoxValue,
                onChanged: (value) {
                  sl<LogInCubit>().changeCheckBoxValue(value!);
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.rSp),
                    side: const BorderSide(
                      color: ColorsManager.mainColor,
                    )
                ),
              );
            },
          ),
          DefaultText(
            text: AppString.confirmationCheck,
            fontSize: 20.rSp,
          ),
        ],
      ),
    );
  }
}
