import 'package:effa/core/utils/resources/app_strings.dart';
import 'package:effa/core/utils/resources/colors_manager.dart';
import 'package:effa/core/utils/resources/constants_manager.dart';
import 'package:effa/core/utils/resources/extensions_manager.dart';
import 'package:effa/core/utils/widgets/default_button.dart';
import 'package:effa/core/utils/widgets/default_text.dart';
import 'package:effa/core/utils/widgets/hide_keyboard.dart';
import 'package:effa/features/login/presentation/components/code_widget.dart';
import 'package:effa/features/login/presentation/components/timer_widget.dart';
import 'package:effa/features/login/presentation/screens/terms_and_conditions_screen.dart';
import 'package:flutter/material.dart';

class CodeScreen extends StatelessWidget {
  CodeScreen({Key? key, required this.phoneNum}) : super(key: key);

  String phoneNum;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: HideKeyboardPage(
        child: SafeArea(
          child: Column(
            children: [
              svgImage(path: AppString.codeTopPath),
              verticalSpace(6.h),
              svgImage(path: AppString.codeLogoPath),
              verticalSpace(3.h),
              DefaultText(
                text: AppString.enterCode,
                fontSize: 20.rSp,
              ),
              verticalSpace(1.h),
              DefaultText(
                text: phoneNum,
                fontSize: 20.rSp,
                color: ColorsManager.mainColor,
                fontWeight: FontWeight.bold,
              ),
              const CodeWidget(),
              const TimerWidget(),
              verticalSpace(10.h),
              DefaultButton(
                onPressed: (){
                  navigateTo(context, const TermsAndConditionsScreen());
                },
                text: AppString.confirm,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
