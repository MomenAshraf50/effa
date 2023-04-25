import 'package:effa/core/utils/resources/app_strings.dart';
import 'package:effa/core/utils/resources/colors_manager.dart';
import 'package:effa/core/utils/resources/extensions_manager.dart';
import 'package:effa/core/utils/widgets/default_text.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton({Key? key,required this.onPressed,required this.text}) : super(key: key);
  VoidCallback onPressed;
  String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.w,
      child: MaterialButton(
        height: 6.h,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.rSp)),
        color: ColorsManager.mainColor,
        onPressed: onPressed,
        child: DefaultText(
          color: ColorsManager.white,
          fontWeight: FontWeight.bold,
          fontSize: 24.rSp,
          text: text,
        ),
      ),
    );
  }
}
