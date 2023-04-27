import 'package:effa/core/di/injection.dart';
import 'package:effa/core/utils/resources/app_strings.dart';
import 'package:effa/core/utils/resources/colors_manager.dart';
import 'package:effa/core/utils/resources/constants_manager.dart';
import 'package:effa/core/utils/resources/extensions_manager.dart';
import 'package:effa/core/utils/widgets/default_button.dart';
import 'package:effa/core/utils/widgets/default_text.dart';
import 'package:effa/core/utils/widgets/hide_keyboard.dart';
import 'package:effa/features/login/presentation/components/drop_down_builder.dart';
import 'package:effa/features/login/presentation/controller/login_cubit.dart';
import 'package:effa/features/login/presentation/screens/code_screen.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextEditingController phoneController = TextEditingController();
    var formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Scaffold(
        body: HideKeyboardPage(
          child: SafeArea(
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: svgImage(path: AppString.logInBottomImagePath),
                ),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      verticalSpace(5.h),
                      Center(child: svgImage(path: AppString.effaLogoPath)),
                      verticalSpace(12.h),
                      DefaultText(
                        text: 'تسجيل دخول',
                        fontWeight: FontWeight.bold,
                        fontSize: 24.rSp,
                      ),
                      verticalSpace(1.h),
                      svgImage(path: AppString.dividerPath),
                      Padding(
                        padding: EdgeInsets.all(20.rSp),
                        child:  DropDownBuilder(controller: phoneController,),
                      ),
                      verticalSpace(2.h),
                      DefaultButton(
                        onPressed: () {
                          if(formKey.currentState!.validate()){
                            navigateTo(context, CodeScreen(phoneNum: '${sl<LogInCubit>().dropDownSelectedValue.dialCode}${phoneController.text}',));
                          }
                        },
                        text: AppString.submit,
                      ),
                      verticalSpace(4.h),

                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
