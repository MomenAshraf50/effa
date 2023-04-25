import 'package:effa/core/di/injection.dart';
import 'package:effa/core/utils/resources/app_strings.dart';
import 'package:effa/core/utils/resources/colors_manager.dart';
import 'package:effa/core/utils/resources/extensions_manager.dart';
import 'package:effa/core/utils/widgets/default_text.dart';
import 'package:effa/features/login/presentation/controller/login_cubit.dart';
import 'package:flutter/material.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int secondsRemaining = 59;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: EdgeInsets.all(15.rSp),
        child: Row(
          children: [
            DefaultText(
              text: AppString.resendCode,
              fontSize: 20.rSp,
            ),
            const Spacer(),
            StreamBuilder<int>(
              initialData: secondsRemaining,
              stream: Stream.periodic(const Duration(seconds: 1),
                  (i) => secondsRemaining - i - 1).take(secondsRemaining),
              builder: (context, snapshot) {
                return DefaultText(
                  text: '00:${snapshot.data}',
                  fontSize: 20.rSp,
                  color: ColorsManager.mainColor,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
