import 'package:effa/core/utils/resources/colors_manager.dart';
import 'package:effa/core/utils/resources/extensions_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CodeTextFormField extends StatelessWidget {
  CodeTextFormField({Key? key,required this.onChanged,required this.focusNode}) : super(key: key);

  Function(String) onChanged;
  FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 10.h,
      width: 10.w,
      padding:  EdgeInsetsDirectional.symmetric(horizontal: 5.rSp),
      child: TextFormField(
        keyboardType: TextInputType.number,
        focusNode: focusNode,
        maxLength: 1,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: ColorsManager.mainColor,
          fontSize: 34.rSp,
        ),
        decoration: const InputDecoration(
            counterText: "",
        ),
        textAlign: TextAlign.center,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly // This filters out non-numeric input
        ],
        onChanged: onChanged,
      ),
    );
  }
}
