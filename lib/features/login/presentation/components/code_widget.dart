import 'package:effa/core/utils/resources/extensions_manager.dart';
import 'package:effa/features/login/presentation/components/code_text_form_field.dart';
import 'package:flutter/material.dart';

class CodeWidget extends StatelessWidget {
  const CodeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode1 = FocusNode();
    final FocusNode focusNode2 = FocusNode();
    final FocusNode focusNode3 = FocusNode();
    final FocusNode focusNode4 = FocusNode();
    final FocusNode focusNode5 = FocusNode();
    final FocusNode focusNode6 = FocusNode();

    return Padding(
      padding: EdgeInsets.all(10.rSp),
      child: Row(
        children: [
          Expanded(
            child: CodeTextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  focusNode2.requestFocus();
                }
              },
              focusNode: focusNode1,
            ),
          ),
          Expanded(
              child: CodeTextFormField(
                onChanged: (value) {
                  if (value.length == 1) {
                    focusNode3.requestFocus();
                  }
                  if (value.isEmpty) {
                    focusNode1.requestFocus();
                  }
                },
                focusNode: focusNode2,
              )),
          Expanded(
              child: CodeTextFormField(
                onChanged: (value) {
                  if (value.length == 1) {
                    focusNode4.requestFocus();
                  }
                  if (value.isEmpty) {
                    focusNode2.requestFocus();
                  }
                },
                focusNode: focusNode3,
              )),
          Expanded(
              child: CodeTextFormField(
                onChanged: (value) {
                  if (value.length == 1) {
                    focusNode5.requestFocus();
                  }
                  if (value.isEmpty) {
                    focusNode3.requestFocus();
                  }
                },
                focusNode: focusNode4,
              )),
          Expanded(
              child: CodeTextFormField(
                onChanged: (value) {
                  if (value.length == 1) {
                    focusNode6.requestFocus();
                  }
                  if (value.isEmpty) {
                    focusNode4.requestFocus();
                  }
                },
                focusNode: focusNode5,
              )),
          Expanded(
              child: CodeTextFormField(
                onChanged: (value) {
                  if (value.length == 1) {
                    focusNode6.unfocus();
                  }
                  if (value.isEmpty) {
                    focusNode5.requestFocus();
                  }
                },
                focusNode: focusNode6,
              )),
        ],
      ),
    );
  }
}
