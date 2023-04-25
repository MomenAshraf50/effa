import 'package:effa/core/utils/resources/app_strings.dart';
import 'package:effa/core/utils/resources/colors_manager.dart';
import 'package:effa/core/utils/resources/constants_manager.dart';
import 'package:effa/core/utils/resources/extensions_manager.dart';
import 'package:effa/core/utils/widgets/default_button.dart';
import 'package:effa/core/utils/widgets/default_text.dart';
import 'package:effa/features/login/presentation/components/confirmation_widget.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.rSp),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DefaultText(
                      text: AppString.welcome,
                      fontSize: 30.rSp,
                      fontWeight: FontWeight.bold,
                    ),
                    DefaultText(
                      text: AppString.effa,
                      fontSize: 30.rSp,
                      color: ColorsManager.mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                DefaultText(
                  text: AppString.effaDescription,
                  fontSize: 20.rSp,
                ),
                verticalSpace(3.h),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 20.rSp, vertical: 10.rSp),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorsManager.grey, width: 0.2.w),
                      borderRadius: BorderRadius.circular(20.rSp),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DefaultText(
                          text: AppString.terms,
                          fontSize: 24.rSp,
                          fontWeight: FontWeight.bold,
                        ),
                        Expanded(
                          child: Scrollbar(
                            child: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: DefaultText(
                                text: AppString.dummyText,
                                fontSize: 18.rSp,
                                color: ColorsManager.grey,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                verticalSpace(2.h),
                const ConfirmationWidget(),
                verticalSpace(3.h),
                DefaultButton(
                  onPressed: (){},
                  text: AppString.start,
                ),
                verticalSpace(5.h)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
