import 'package:effa/features/login/presentation/controller/login_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServiceLocator{
  Future<void> init() async {
    // Bloc

    sl.registerLazySingleton<LogInCubit>(() => LogInCubit());

  }
}


