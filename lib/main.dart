import 'package:effa/core/di/injection.dart';
import 'package:effa/core/utils/resources/colors_manager.dart';
import 'package:effa/features/login/presentation/controller/login_cubit.dart';
import 'package:effa/features/login/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ServiceLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<LogInCubit>(),
      child: MaterialApp(
        title: 'عفة',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scrollbarTheme: ScrollbarThemeData(
            isAlwaysShown: true,
            thumbColor: MaterialStateProperty.all<Color>(ColorsManager.mainColor),
            trackBorderColor: MaterialStateProperty.all<Color>(ColorsManager.grey),
          ),
          checkboxTheme: CheckboxThemeData(
            fillColor: MaterialStateProperty.all<Color>(ColorsManager.mainColor),

          ),
          scaffoldBackgroundColor: ColorsManager.backgroundColor,
          primarySwatch: ColorsManager.primaryColor,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}

